
# `julia-to-nix-depot`



## Building a Julia depot

First, `cd` to a folder and create a Julia `Project.toml` and `Manifest.toml` containing the packages you want.

```bash
mkdir depot
cd depot
julia
julia> # Press "]" to enter package mode
pkg> activate .
pkg> add SomePackage
pkg> add SomeOtherPackage
pkg> [Ctrl+D to exit]
```

Now use `julia2nix` to generate the Nix files.

```bash
git clone git@github.com:thomasjm/julia2nix.git /some/path/julia2nix

# Make sure you have a NIX_PATH set
export NIX_PATH=nixpkgs=...

/some/path/julia2nix/julia2nix
```

This should place a few Nix files in your `depot` folder, including a `default.nix`. Now you can build the Julia depot:

```bash
nix-build .
```

## Using the depot
