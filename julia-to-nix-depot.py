#!/usr/bin/env python3

import os
from pathlib import Path
import sys
import toml

from git.repo.base import Repo

from nix_util import fetch_sha256

environment_folder = Path(sys.argv[1])

if not Path(environment_folder).exists():
    raise Exception("Couldn't find Julia environment folder '%s'" % environment_folder)

manifest_file = environment_folder.joinpath("Manifest.toml")
if not manifest_file.exists():
    raise Exception("Couldn't find manifest file '%s'" % manifest_file)

project_file = environment_folder.joinpath("Project.toml")
if not project_file.exists():
    raise Exception("Couldn't find project file '%s'" % project_file)

manifest = toml.load(manifest_file)

working_dir = Path(os.path.dirname(os.path.realpath(__file__)))
general_repo_url = "https://github.com/JuliaRegistries/General.git"
local_registry_path = working_dir.joinpath("registry")

if local_registry_path.exists():
    # TODO: update?
    pass
else:
    print("Cloning " + str(general_repo_url), file=sys.stderr)
    Repo.clone_from(general_repo_url, local_registry_path)

registry = toml.load(local_registry_path.joinpath("Registry.toml"))

infos = []
for name, details in manifest.items():
    uuid = details[0]["uuid"]
    githash = details[0].get("git-tree-sha1")

    info = registry["packages"].get(uuid)
    url = None

    if info:
        package_path = local_registry_path.joinpath(info["path"]).joinpath("Package.toml")
        if not package_path.exists():
            raise Exception("Couldn't find package path '%s'" % str(package_path))

        package = toml.load(package_path)
        url = package["repo"]

    infos.append({
        "name": name,
        "uuid": uuid,
        "githash": githash,
        "path": info and info.get("path"),
        "url": url
    })

formatted_dicts = []
for info in infos:
    name = info["name"]
    uuid = info["uuid"]
    githash = info["githash"] or "null"
    path = info["path"] or "null"
    src = "null"
    if info["url"]:
        url = info["url"]
        sha256 = fetch_sha256(url, rev="HEAD", deepClone=True, leaveDotGit=True, fetchSubmodules=True)
        # src = 'fetchgit { ' + f'url = "{url}"; sha256 = "{sha256}";' + ' }'
        src = 'fetchgit { ' + f'url = "{url}"; sha256 = "{sha256}"; deepClone = true; leaveDotGit = true; fetchSubmodules = true;' + ' }'
        # src = 'fetchgit { ' + f'url = "{url}"; sha256 = "{sha256}"; leaveDotGit = true; fetchSubmodules = true;' + ' }'

    formatted_dicts.append("{" + f'\n  name = "{name}";\n  uuid = "{uuid}";\n  githash = "{githash}";\n  path = "{path}";\n  src = {src};' + "\n}")

formatted = " ".join(formatted_dicts)
print("{fetchgit}: [" + formatted + "]")
