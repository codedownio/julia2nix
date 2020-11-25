{
  callPackage,
  curl,
  fetchgit,
  git,
  jq,
  julia,
  lib,
  python3,
  runCommand,
  writeText,
  makeWrapper,
  makeWrapperArgs ? ""
}:

let
  packages = callPackage ./packages.nix {};

  # This step is needed because leaveDotGit is not reproducible
  # https://github.com/NixOS/nixpkgs/issues/8567
  repoified = map repoify packages.closure;
  repoify = item: if item.src == null then item else item // {
    src = runCommand ''${item.name}-repoified'' {buildInputs = [git];} ''
      mkdir -p $out
      cp -r ${item.src}/. $out
      cd $out
      git init
      git add . -f
      git config user.email "julia2nix@localhost"
      git config user.name "julia2nix"
      git commit -m "Dummy commit"

      if [[ $(git cat-file -t ${item.treehash}) != "tree" ]]; then
        echo "Couldn't find desired tree object for ${item.name} in repoify (${item.treehash})"
        exit 1
      fi
    '';
    };

  packagesJSON = writeText "packages.json" (lib.generators.toJSON {} repoified);

  pythonToUse = python3.withPackages (ps: [ps.toml]);

  generalRegistrySrc = fetchgit {
    url = "https://github.com/JuliaRegistries/General.git";
    rev = "502be3c39d10326a44676a1797acacf8d84403b3";
    sha256 = "0cip6ppndfvvwpf3zc5p83ch1c6d0db249mdk7gskskahrb6zmj1";
    branchName = "master";
    leaveDotGit = true;
    deepClone = true;
  };

  registry = runCommand "julia-registry" { buildInputs = [pythonToUse jq git]; } ''
    git clone ${generalRegistrySrc}/. $out
    cd $out

    cat ${packagesJSON} | jq -r '.[]|[.name, .path, .src] | @tsv' |
      while IFS=$'\t' read -r name path src; do
        # echo "Processing: $name, $path, $src"
        if [[ "$path" != "null" ]]; then
          python -c "import toml; \
                     packageTomlPath = '$path/Package.toml'; \
                     contents = toml.load(packageTomlPath); \
                     contents['repo'] = 'file://$src'; \
                     f = open(packageTomlPath, 'w'); \
                     f.write(toml.dumps(contents)); \
                     "
        fi
      done

    export HOME=$(pwd)
    git config --global user.email "julia-to-nix-depot@email.com"
    git config --global user.name "julia-to-nix-depot script"
    git add .
    git commit -m "Switch to local package repos"
  '';

  depot = runCommand "julia-depot" {
    buildInputs = [git curl julia];
    inherit registry;
  } ''
    export HOME=$(pwd)

    echo "Using registry $registry"
    echo "Using Julia ${julia}/bin/julia"

    cp ${./Manifest.toml} ./Manifest.toml
    cp ${./Project.toml} ./Project.toml

    julia -e ' \
      using Pkg;
      Pkg.Registry.add(RegistrySpec(path="${registry}"));

      Pkg.activate(".")
      Pkg.instantiate()
    '

    cp -r .julia $out
  '';

in

runCommand "julia-env" {
  inherit julia depot makeWrapperArgs;
  buildInputs = [makeWrapper];
} ''
  mkdir -p $out/bin
  makeWrapper $julia/bin/julia $out/bin/julia \
    --set JULIA_DEPOT_PATH /home/user/.julia:/build/.julia $makeWrapperArgs
''
