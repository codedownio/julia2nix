
import json
import os
from pathlib import Path
import subprocess


def fetch_sha256(url, rev="HEAD", deepClone=False, leaveDotGit=False, fetchSubmodules=False):
    extra_args = [] \
      + (["--deepClone"] if deepClone else []) \
      + (["--leave-dotGit"] if leaveDotGit else []) \
      + (["--fetch-submodules"] if fetchSubmodules else [])

    p = subprocess.run([
        "nix-prefetch-git",
        "--url", url,
        "--rev", rev,
        "--quiet"
    ] + extra_args, check=True, stdout=subprocess.PIPE)

    stdout = p.stdout.decode()

    if stdout.startswith("Nothing new to pack."):
        stdout = stdout[(len("Nothing new to pack.")):]

    return json.loads(stdout)["sha256"]
