{ pkgs ? import <nixpkgs> {} }:

with pkgs;


let
  # The base Julia version
  baseJulia = julia_15;

  # Extra libraries for Julia's LD_LIBRARY_PATH.
  # Recent Julia packages that use Artifacts.toml to specify their dependencies
  # shouldn't need this.
  # But if a package implicitly depends on some library being present at runtime, you can
  # add it here.
  extraLibs = [];

  # Wrapped Julia with libraries and environment variables.
  # Note: setting The PYTHON environment variable is recommended to prevent packages
  # from trying to obtain their own with Conda.
  julia = runCommand "julia-wrapped" { buildInputs = [makeWrapper]; } ''
    mkdir -p $out/bin
    makeWrapper ${baseJulia}/bin/julia $out/bin/julia \
                --suffix LD_LIBRARY_PATH : "${lib.makeLibraryPath extraLibs}" \
                --set PYTHON ${python3}/bin/python
  '';

in

callPackage ./common.nix {
  inherit julia;

  # Run Pkg.precompile() to precompile all packages?
  precompile = true;

  # Extra arguments to makeWrapper when creating the final Julia wrapper.
  # By default, it will just put the new depot at the end of JULIA_DEPOT_PATH.
  # You can add additional flags here.
  makeWrapperArgs = "";

  # Extra buildInputs for building the Julia depot. Useful if your packages have
  # additional build-time dependencies not managed through the Artifacts.toml system.
  # Defaults to extraLibs, but can be configured independently.
  extraBuildInputs = extraLibs;
}
