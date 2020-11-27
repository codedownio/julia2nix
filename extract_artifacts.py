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

results = []

def process_download(name, sha1, download):
    results.append((name, sha1, download["url"], download["sha256"]))

def process_top_level(name, details):
    sha1 = details["git-tree-sha1"]

    download = details.get("download")
    if isinstance(download, list):
        for d in download:
            process_download(name, sha1, d)
    elif isinstance(download, dict):
        process_download(name, sha1, download)

for name, details in artifacts.items():
    if isinstance(details, list):
        for detail in details:
            process_top_level(name, detail)
    elif isinstance(details, dict):
        process_top_level(name, details)

if results:
    print("{")
    for (name, sha1, url, sha256) in results:
        print(f'    "{sha1}" = ' + '{ ' +
              f'\n      name = "{name}";' +
              f'\n      url = "{url}";' +
              f'\n      sha256 = "{sha256}";' +
              '\n    };')
    print("  }", end="")
else:
    print("{}", end="")
