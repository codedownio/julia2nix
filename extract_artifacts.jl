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

# It's possible for the artifacts to have multiple entries with the same sha1,
# so group by that first
sha1_to_meta = Dict{String, Vector{Tuple{String, Any}}}()
for (artifact_name, value) in artifact_dict
    meta = artifact_meta(artifact_name, artifact_dict, artifacts_toml; platform=platform)
    sha1 = meta["git-tree-sha1"]

    if !haskey(sha1_to_meta, sha1)
        sha1_to_meta[sha1] = []
    end

    push!(sha1_to_meta[sha1], (artifact_name, meta))
end

# Print a Nix attrset where the keys are sha1 hashes and the values
# are lists of "artifact infos"
print("{")
for (sha1, metas) in sha1_to_meta
    print("""\n    "$sha1" = [""")

    for (index, (artifact_name, meta)) in enumerate(metas)
        for download in meta["download"]
            url = download["url"]
            sha256 = download["sha256"]
            if index > 1
                print(" ")
            end
            print("{")
            print("\n      name = \"$artifact_name\";")
            print("\n      url = \"$url\";")
            print("\n      sha256 = \"$sha256\";")
            print("\n    }")
        end
    end

    print("];")
end
print("\n  }")
