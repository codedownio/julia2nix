
# `julia-to-nix-depot`

## Usage

First, `cd` to a folder and create a Julia `Project.toml` and `Manifest.toml` containing the packages you want.

```bash
mkdir depot
cd depot
julia
# Press "]" to enter package mode
pkg> activate .
pkg> add SomePackage
pkg> add SomeOtherPackage
pkg> [Ctrl+D to exit]
```

Now use `julia2nix` to generate the Nix files.

```bash
cd ~/tools
git clone git@github.com:thomasjm/julia2nix.git

# Make sure you have a NIX_PATH set
export NIX_PATH=nixpkgs=...

cd /path/to/depot
~/tools/julia2nix/julia2nix
```
