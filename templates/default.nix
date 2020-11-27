with import <nixpkgs> {};

with pkgs;


let
  # The base Julia version
  baseJulia = julia_13;

  # Add extra library dependencies for your depot here!
  # You might need to determine these by trial and error for your packages, i.e.
  # build the depot and see if it complains about missing dependencies, then add
  # them and repeat.

  extraLibs = [

  ];

  # Wrapped Julia with libraries and environment variables
  # Note: setting The PYTHON environment variable is recommended to prevent packages
  # from trying to obtain their own with Conda.
  julia = runCommand "julia-wrapped" { buildInputs = [makeWrapper]; } ''
    mkdir -p $out/bin
    makeWrapper ${baseJulia}/bin/julia $out/bin/julia \
                --suffix LD_LIBRARY_PATH : "${lib.makeLibraryPath extraLibs}" \
                --set PYTHON ${python3}/bin/python
  '';

in

callPackage ./common.nix { inherit julia; }
