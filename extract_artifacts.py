#! /usr/bin/env nix-shell
#! nix-shell -i python3 -p julia_15 "python3.withPackages (ps: [ps.toml ps.GitPython])" nix-prefetch-git

import json
from pathlib import Path
import sys
import toml

# TODO: use Pkg.Artifacts.find_artifacts_toml to find this file?
# Not sure if it will always exist at the root of the project.
path = Path(sys.argv[1]).joinpath("Artifacts.toml")

# built = subprocess.check_output("nix-build -E 'with import <nixpkgs> { }; %s' --no-out-link" % derivation)
# print("built", built)

if not path.exists():
    print("[]")
    sys.exit()

artifacts = toml.load(path)

results = []
for name, details in artifacts.items():
    for detail_name, rows in details.items():
        if detail_name == "download":
            results.append((rows[0]["sha256"], rows[0]["url"]))

print(json.dumps(results))
