
import json
import os
from pathlib import Path
import subprocess


script_dir = Path(os.path.dirname(os.path.realpath(__file__)))
nix_prefetch_git = script_dir.joinpath("templates").joinpath("fetchgit").joinpath("nix-prefetch-git")


def fetch_sha256(url, rev="HEAD", deepClone=False, leaveDotGit=False, fetchSubmodules=False):
    extra_args = [] \
      + (["--deepClone"] if deepClone else []) \
      + (["--leave-dotGit"] if leaveDotGit else []) \
      + (["--fetch-submodules"] if fetchSubmodules else [])

    p = subprocess.run([
        nix_prefetch_git,
        "--url", url,
        "--rev", rev,
        "--quiet"
    ] + extra_args, check=True, stdout=subprocess.PIPE)

    stdout = p.stdout.decode()

    if stdout.startswith("Nothing new to pack."):
        stdout = stdout[(len("Nothing new to pack.")):]

    return json.loads(stdout)["sha256"]
