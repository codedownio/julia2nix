with import <nixpkgs> {};

with pkgs;

let
  packages = callPackage ./packages.nix {};

  packagesJSON = writeText "packages.json" (lib.generators.toJSON {} packages);

  pythonToUse = python3.withPackages (ps: [ps.toml]);

in

stdenv.mkDerivation {
  name = "julia-registry";

  src = fetchgit {
    url = "https://github.com/JuliaRegistries/General.git";
    rev = "502be3c39d10326a44676a1797acacf8d84403b3";
    sha256 = "0cip6ppndfvvwpf3zc5p83ch1c6d0db249mdk7gskskahrb6zmj1";
    branchName = "master";
    leaveDotGit = true;
    deepClone = true;
  };

  configurePhase = "true";

  buildInputs = [pythonToUse jq git];

  buildPhase = ''
    cat ${packagesJSON} | jq -r '.[]|[.name, .path, .src] | @tsv' |
      while IFS=$'\t' read -r name path src; do
        # echo "Processing: $name, $path, $src"
        if [[ "$path" != "null" ]]; then
          python -c "import toml; \
                     packageTomlPath = '$path/Package.toml'; \
                     contents = toml.load(packageTomlPath); \
                     contents['repo'] = '$src'; \
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

    chmod -R 777 .git
  '';

  installPhase = ''
    mkdir -p $out;
    cp -r . $out
  '';

  dontPatch = true;
  dontFixup = true;
}
