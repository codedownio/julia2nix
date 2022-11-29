{ pkgs ? import <nixpkgs> {}

# The base Julia version
, baseJulia ? pkgs.julia-stable-bin

# Extra libraries for Julia's LD_LIBRARY_PATH.
# Recent Julia packages that use Artifacts.toml to specify their dependencies
# shouldn't need this.
# But if a package implicitly depends on some library being present at runtime, you can
# add it here.
, extraLibs ? []

# Python to put on Julia's PATH and in the PYTHON environment variable.
# If one is not provided, Julia packages may try to use Conda to obtain their own.
, python ? pkgs.python3

# Run Pkg.precompile() to precompile all packages?
, precompile ? true

# Extra arguments to makeWrapper when creating the final Julia wrapper.
# By default, it will just put the new depot at the end of JULIA_DEPOT_PATH.
# You can add additional flags here.
, makeWrapperArgs ? ""
}:

with pkgs;


let
  # Wrapped Julia with libraries and environment variables.
  # Note: setting The PYTHON environment variable is recommended to prevent packages
  # from trying to obtain their own with Conda.
  julia = runCommand "julia-wrapped" { buildInputs = [makeWrapper]; } ''
    mkdir -p $out/bin
    makeWrapper ${baseJulia}/bin/julia $out/bin/julia \
                --suffix LD_LIBRARY_PATH : "${lib.makeLibraryPath extraLibs}" \
                --set PYTHON ${python}/bin/python \
                --suffix PATH : ${python}/bin/python
  '';

in

callPackage ./common.nix {
  inherit julia extraLibs precompile makeWrapperArgs;
}
