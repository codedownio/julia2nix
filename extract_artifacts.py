#! /usr/bin/env nix-shell
#! nix-shell -i python3 -p julia_15 "python3.withPackages (ps: [ps.toml ps.GitPython])" nix-prefetch-git

from itertools import chain
import json
from pathlib import Path
import subprocess
import sys
import toml

derivation = sys.argv[1]

built = subprocess.check_output(["nix-build", "-E", "with import <nixpkgs> { }; %s" % derivation, "--no-out-link"]).decode().strip()

# TODO: use Pkg.Artifacts.find_artifacts_toml to find this file?
# Not sure if it will always exist at the root of the project.
path = Path(built).joinpath("Artifacts.toml")

if not path.exists():
    print("{}", end="")
    sys.exit()

artifacts = toml.load(path)

# Based on https://stackoverflow.com/a/29652561/2659595
def gen_dict_extract(key, var):
    for k, v in var.items():
        if k == key:
            yield v
        if isinstance(v, dict):
            for result in gen_dict_extract(key, v):
                yield result
        elif isinstance(v, list):
            for d in v:
                for result in gen_dict_extract(key, d):
                    yield result

results = list(chain.from_iterable(gen_dict_extract("download", artifacts)))

if results:
    joined_results = "".join(['\n    "' + x["sha256"] + '" = "' + x["url"] + '";' for x in results])
    print("{" + joined_results + "\n    }", end="")
else:
    print("{}", end="")
