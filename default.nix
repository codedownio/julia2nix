with import <nixpkgs> {};

with pkgs;


let
  registry = import ./julia-registry.nix;

  julia = julia_11;

in

runCommand "julia-depot" { buildInputs = [git curl julia]; } ''
  export HOME=$(pwd)

  # This is dumb, but Julia's libgit2 clone fails if we just pass it the path to ${registry},
  # apparently because all the write bits are off.
  # So, clone it locally, which will set the write bits on, and pass the local path.
  git clone ${registry} ./registry

  julia -e ' \
    using Pkg;
    Pkg.Registry.add(RegistrySpec(path="./registry"));

    Pkg.add("IJulia")
  '

  touch $out
''
