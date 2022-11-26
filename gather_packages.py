#! /usr/bin/env nix-shell
#! nix-shell -i python3 -p "python3.withPackages (ps: [ps.toml ps.GitPython])"

import logging
import os
from multiprocessing import Pool
from pathlib import Path
import subprocess
import sys
import tempfile
import toml

from git.repo.base import Repo

from nix_util import fetch_sha256

# Logger
logging.basicConfig(
    level=logging.DEBUG,
    format="[%(asctime)s] {%(filename)s:%(lineno)d} %(levelname)s - %(message)s",
    handlers=[logging.StreamHandler(stream=sys.stderr)]
)
logger = logging.getLogger("default")

# Args
environment_folder = Path(sys.argv[1])
general_repo_url = (len(sys.argv) >= 3 and sys.argv[2]) or "https://github.com/JuliaRegistries/General.git"
num_workers = (len(sys.argv) >= 4 and int(sys.argv[3])) or 8

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

# Manifest version 1.0 has the dependencies at the top level.
# For version 2.0, they're under the "deps" heading.
if manifest.get("manifest_format") == "2.0":
    manifest = manifest["deps"]

registry_rev = "unknown"
registry_sha256 = "unknown"

script_dir = Path(os.path.dirname(os.path.realpath(__file__)))

# Load the registry
with tempfile.TemporaryDirectory() as working_dir:
    # Clone and load the registry
    working_dir = Path(working_dir)
    local_registry_path = working_dir.joinpath("registry")
    logger.info("Cloning %s to %s" % (str(general_repo_url), local_registry_path))
    repo = Repo.clone_from(general_repo_url, local_registry_path, depth=1)
    registry_rev = repo.heads[0].commit.hexsha
    logger.info("Got registry revision: " + str(registry_rev))
    registry_sha256 = fetch_sha256(general_repo_url, rev=registry_rev)
    logger.info("Got registry sha256: " + str(registry_sha256))
    registry = toml.load(local_registry_path.joinpath("Registry.toml"))

    # Process each manifest item
    def process_item(name):
        details = manifest[name]

        uuid = details[0]["uuid"]
        githash = details[0].get("git-tree-sha1")
        url = details[0].get("repo-url")
        path = "null"
        artifacts = "{}"
        replace_url_in_manifest = 'null'

        # If we already got a URL from the manifest file, just use that.
        # Otherwise, get it from the registry
        if url:
            replace_url_in_manifest = f'"{url}"'
        else:
            info = registry["packages"].get(uuid)
            if info:
                package_path = local_registry_path.joinpath(info["path"]).joinpath("Package.toml")
                if not package_path.exists():
                    raise Exception("Couldn't find package path '%s'" % str(package_path))
                url = toml.load(package_path)["repo"]
                path = info["path"] or "null"

        src = "null"
        if url and githash:
            sha256 = fetch_sha256(url, rev=githash)
            src = 'fetchgit { ' + f'url = "{url}"; rev = "{githash}"; sha256 = "{sha256}";' + ' }'
            artifacts = subprocess.check_output([script_dir.joinpath("extract_artifacts.jl"), src]).decode()

            # If our URL came from the Manifest file, modify it to point to a Nix path
            if details[0].get("repo-url"):
                derivation = "with import <nixpkgs> {}; " + src
                details[0]["repo-url"] = subprocess.check_output(["nix-build", "-E", derivation, "--no-out-link"]).decode().strip()

        else:
            logger.warning("Failed to nix-prefetch-git for package %s (url = %s, githash = %s). Hopefully it's built-in?" % (name, url, githash))

        return "{\n  " \
               + "\n  ".join([f'name = "{name}";',
                              f'uuid = "{uuid}";',
                              f'path = "{path}";',
                              f'replaceUrlInManifest = {replace_url_in_manifest};',
                              f'treehash = "{githash}";',
                              f'artifacts = {artifacts};',
                              f'src = {src};']) \
               + "\n}"

    with Pool(num_workers) as p:
        formatted_dicts = p.map(process_item, manifest.keys())

    print("""# This file is autogenerated, do not edit by hand!
{fetchgit}: {
  registryUrl = "%s";
  registryRev = "%s";
  registrySha256 = "%s";
  rootPackages = [%s];
  closure = [%s];
}""" % (general_repo_url,
        registry_rev,
        registry_sha256,
        " ".join(['"' + x + '"' for x in root_packages]), " ".join(formatted_dicts)))
