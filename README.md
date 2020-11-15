
# `julia-to-nix-depot`

## Usage

First, create a Julia environment containing the packages you want.

```bash
pkg> activate myproject
pkg> add SomePackage
```

Now, the `myproject` folder should contain `Manifest.toml` and `Project.toml`. Invoke the `julia-to-nix-depot` script:

```python
> julia-to-nix-depot /path/to/myproject > myproject.nix
```

This will generate a Nix file called `myproject.nix`, which will contain a derivation for building a depot with the desired packages.
