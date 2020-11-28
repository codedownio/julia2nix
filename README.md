
# julia2nix

Package a Julia environment using the [Nix package manager](https://nixos.org/).

Given a Julia environment in the form of a `Project.toml` and `Manifest.toml` file, this tool will generate Nix derivations that build a Julia depot with the given packages.

> Recommended: Julia 1.3+
> Julia 1.3 introduced `Pkg.Artifacts`, a principled way for packages to specify binary dependencies etc.

## Quick start

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
### Step 2: run `julia2nix` to generate the Nix files

```bash
git clone git@github.com:thomasjm/julia2nix.git ~/julia2nix
# Still in the "depot" folder from before:
~/julia2nix/julia2nix
```

This will create a few files:

* `packages.nix`: Nix expressions for the packages and artifacts.
* `common.nix`: common code for building your environment. Please don't edit this.
* `default.nix`: the main entry point. You can edit some settings in here. In particular, you should make sure `baseJulia` matches the Julia version you used in Step 1.

### Step 3: build!

The following command should build your Julia environment and drop you into a Julia session where your packages are enabled:

``` bash
$(nix-build --no-out-link)/bin/julia
```


## How does it work?

TODO
