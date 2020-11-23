#! /usr/bin/env nix-shell
#! nix-shell -i python3 -p "python3.withPackages (ps: [ps.toml ps.GitPython])" nix-prefetch-git

import os
from pathlib import Path
import sys
import tempfile
import toml

from git.repo.base import Repo

from nix_util import fetch_sha256

environment_folder = Path(sys.argv[1])

general_repo_url = (len(sys.argv) >= 3 and sys.argv[2]) or "https://github.com/JuliaRegistries/General.git"

if not Path(environment_folder).exists():
    raise Exception("Couldn't find Julia environment folder '%s'" % environment_folder)

manifest_file = environment_folder.joinpath("Manifest.toml")
if not manifest_file.exists():
    raise Exception("Couldn't find manifest file '%s'" % manifest_file)

project_file = environment_folder.joinpath("Project.toml")
if not project_file.exists():
    raise Exception("Couldn't find project file '%s'" % project_file)

project = toml.load(project_file)
root_packages = []
for name in project["deps"]:
    root_packages.append(name)

manifest = toml.load(manifest_file)

with tempfile.TemporaryDirectory() as working_dir:
    working_dir = Path(working_dir)
    local_registry_path = working_dir.joinpath("registry")

    print("Cloning %s to %s" % (str(general_repo_url), local_registry_path), file=sys.stderr)
    Repo.clone_from(general_repo_url, local_registry_path)

    registry = toml.load(local_registry_path.joinpath("Registry.toml"))

    formatted_dicts = []
    for name, details in manifest.items():
        uuid = details[0]["uuid"]
        githash = details[0].get("git-tree-sha1")
        info = registry["packages"].get(uuid)
        url = None
        path = "null"

        # Fill in url and path
        if info:
            package_path = local_registry_path.joinpath(info["path"]).joinpath("Package.toml")
            if not package_path.exists():
                raise Exception("Couldn't find package path '%s'" % str(package_path))
            package = toml.load(package_path)
            url = package["repo"]
            path = info["path"] or "null"

        src = "null"
        if url and githash:
            sha256 = fetch_sha256(url, rev=githash)
            src = 'fetchgit { ' + f'url = "{url}"; rev = "{githash}"; sha256 = "{sha256}";' + ' }'
        else:
            print("Failed to nix-prefetch-git for package %s (url = %s, githash = %s)" % (name, url, githash),
                  file=sys.stderr)

        formatted_dicts.append("{" + f'\n  name = "{name}";\n  uuid = "{uuid}";\n  path = "{path}";\n  src = {src};' + "\n}")

    print("""{fetchgit}: {
  rootPackages = [%s];
  closure = [%s];
}""" % (" ".join(['"' + x + '"' for x in root_packages]), " ".join(formatted_dicts)))
