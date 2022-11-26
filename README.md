
# julia2nix

Package a Julia environment using the [Nix package manager](https://nixos.org/)!

> Recommended: Julia 1.3+ (so we can get package dependencies from `Artifacts.toml`)

## Quick start

### Step 1: create `Project.toml` and `Manifest.toml`

Go to a folder and create a Julia `Project.toml` and `Manifest.toml` containing the desired packages, using the normal `Pkg` interface.

> Important: make sure you use the same Julia version you're going to be specifying in Nix!
> If you use different versions, the package set you create may not be compatible.
> It's best to just launch the Nix-provided Julia directly, i.e.
> `$(nix-build '<nixpkgs>' -A julia-lts-bin)/bin/julia`

```bash
mkdir depot
cd depot
$(nix-build '<nixpkgs>' -A julia-lts-bin)/bin/julia

julia> # Press "]" to enter package mode
pkg> activate .
pkg> add SomePackage
pkg> add SomeOtherPackage
pkg> [Ctrl+D to exit]
```
### Step 2: run `julia2nix` to generate the Nix files

```bash
# Still in the "depot" folder from before:
nix run https://github.com:codedownio/julia2nix
```

This will create a few files:

* `packages.nix`: Nix expressions for the packages and artifacts.
* `common.nix`: common code for building your environment. Please don't edit this by hand.
* `default.nix`: the main entry point. You can edit some settings in here.

> You should make sure the `baseJulia` in `default.nix` matches the Julia version you used in Step 1.

### Step 3: build!

The following command should build your Julia environment and drop you into a Julia session where your packages are available:

``` bash
# Make sure you have a writable depot in JULIA_DEPOT_PATH.
# Our wrapped Julia will add the one we just built to the end.
export JULIA_DEPOT_PATH=${HOME}/.julia
$(nix-build . --no-out-link)/bin/julia
```

## Updating packages

To change the package set and regenerate the Nix expressions, simply repeat steps 1 and 2 in the same folder. `julia2nix` will overwrite `packages.nix` and possibly `common.nix`/`fetchgit`, but will not replace `default.nix`.

## How does it work?

Julia's new package manager `Pkg3` learns about available packages from a "registry" repository, primarily the [General](https://github.com/JuliaRegistries/General) registry. When you type `Pkg.install("SomePackage")`, it looks up the package's URL and other metadata such as the Git hash in the registry.

`julia2nix` looks at your `Manifest.toml` to find all the packages that `Pkg3` will need to download and constructs Nix derivations to get the necessary versions of each. Then, it constructs a special version of the registry where those package URLs are replaced with Nix store paths. With this special registry, plus rewriting any URL paths in `Manifest.toml` itself, we can run `Pkg.instantiate()` and be sure that all clone requests will be read from Nix store paths on disk.

After the packages are cloned, some will need to obtain extra artifacts such as platform-specific library binaries. If the packages use the new `Pkg.Artifacts` system to specify their artifacts, then `julia2nix` will likewise generate derivations for these by processing the `Artifacts.toml` file in each package and computing an overall [`Overrides.toml`](https://julialang.github.io/Pkg.jl/v1/artifacts/#Overriding-artifact-locations) with Nix path versions of everything.

At the end of the day, you get a declarative and reproducible Julia depot built with Nix!

## Advanced notes

There are a few options you can configure in `default.nix` (also documented there):

* Set whether `Pkg.precompile()` is called at the end to precompile all packages (defaults to true).
* Configure `makeWrapper` arguments to Julia, for example to configure environment variables. The default version sets the `PYTHON` environment variable to a Nix-provided Python, so that Julia packages won't try to use Conda to obtain their own.

If you only want the Julia depot to use in your own derivations, it is exposed from `default.nix` as the `depot` attribute.

## Specific packages

Check out the [wiki](https://github.com/thomasjm/julia2nix/wiki) for notes on specific packages that don't work out of the box but can be made to work. Wiki contributions welcome.
