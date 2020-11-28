
# `julia2nix`



## Building a Julia depot

### Step 0: make sure you have `NIX_PATH` set

The `julia2nix` script uses a `nix-shell` shebang to run, so it needs to be able to find packages.

``` bash
export NIX_PATH=nixpkgs=...
```

### Step 1: create `Project.toml` and `Manifest.toml`

Go to a folder and create a Julia `Project.toml` and `Manifest.toml` containing the packages you want.

> Important: make sure you use the same Julia version you're going to be specifying in Nix!
> If you use different Julia versions, the package set you create may not be compatible.
> It would be best to use the Nix-provided Julia for this, i.e. launch it with
> `$(nix-build '<nixpkgs>' -A julia_15)/bin/julia`

```bash
mkdir depot
cd depot
$(nix-build '<nixpkgs>' -A julia_15)/bin/julia

julia> # Press "]" to enter package mode
pkg> activate .
pkg> add SomePackage
pkg> add SomeOtherPackage
pkg> [Ctrl+D to exit]
```
## Step 2: run `julia2nix` to generate the Nix files.

```bash
git clone git@github.com:thomasjm/julia2nix.git ~/julia2nix

~/julia2nix/julia2nix
```

This should place a few Nix files in your `depot` folder, including a `default.nix`. Now you can build the Julia depot:

```bash
nix-build .
```

## Using the depot
