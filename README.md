
# julia2nix

Package a Julia environment using the [Nix package manager](https://nixos.org/)!

> Recommended: Julia 1.3+ (so we can use `Artifacts.toml`)

## Quick start

### Step 1: create `Project.toml` and `Manifest.toml`

Go to a folder and create a Julia `Project.toml` and `Manifest.toml` containing the desired packages, using the normal `Pkg` interface.

> Important: make sure you use the same Julia version you're going to be specifying in Nix!
> If you use different Julia versions, the package set you create may not be compatible.
> It's best to just launch the Nix-provided Julia directly, i.e.
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

## Updating packages

To change the package set and regenerate the Nix expressions, simply repeat steps 1 and 2 in the same folder. `julia2nix` will overwrite `packages.nix` and possibly `common.nix`, but will not replace `default.nix`.

## How does it work?

TODO
