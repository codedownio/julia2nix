#! /usr/bin/env nix-shell
#! nix-shell -i julia -p julia_15

using Pkg, Pkg.Artifacts, Pkg.BinaryPlatforms, Pkg.PlatformEngines

derivation = ARGS[1]
full = string("with import <nixpkgs> { }; ", derivation)
built = String(rstrip(read(`nix-build -E $full --no-out-link`, String)))

artifacts_toml = find_artifacts_toml(built)

if artifacts_toml == nothing
    print("{}")
    exit()
end

artifact_dict = Pkg.Artifacts.load_artifacts_toml(artifacts_toml)

platform = platform_key_abi()

print("{")
for (artifact_name, value) in artifact_dict
    meta = artifact_meta(artifact_name, artifact_dict, artifacts_toml; platform=platform)
    sha1 = meta["git-tree-sha1"]

    print("""\n    "$sha1" = [""")
    for download in meta["download"]
        url = download["url"]
        sha256 = download["sha256"]
        print("{")
        print("\n      name = \"$artifact_name\";")
        print("\n      url = \"$url\";")
        print("\n      sha256 = \"$sha256\";")
        print("\n    }")
    end
    print("];")
end
print("\n  }")
