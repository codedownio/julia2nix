
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

# Check for a select_artifacts.jl.
# See https://pkgdocs.julialang.org/v1/artifacts/#Extending-Platform-Selection
selectArtifactsJl = joinpath([built, ".pkg", "select_artifacts.jl"])
if isfile(selectArtifactsJl)
  include(selectArtifactsJl)
  extraMetas = augment_platform!(platform)
  # TODO: add these extra artifacts to artifact_dict so they get processed below
end

# It's possible for the artifacts to have multiple entries with the same sha1,
# so group by that first
sha1_to_meta = Dict{String, Vector{Tuple{String, Any}}}()
for (artifact_name, items) in artifact_dict
    if !isa(items, Vector)
        items = [items];
    end

    # Get all possible artifacts that match our current os/arch.
    # If they don't specify either key, consider it a match just to be safe.
    for meta in items
        if !(
            !haskey(meta, "os") || meta["os"] == platform["os"]
            &&
            !haskey(meta, "arch") || meta["arch"] == platform["arch"]
            )
            continue
        end

        sha1 = meta["git-tree-sha1"]
        if !haskey(sha1_to_meta, sha1)
            sha1_to_meta[sha1] = []
        end
        push!(sha1_to_meta[sha1], (artifact_name, meta))
    end
end

# Print a Nix attrset where the keys are sha1 hashes and the values
# are lists of "artifact infos"
print("{")
for (sha1, metas) in sha1_to_meta
    print("""\n  "$sha1" = [""")

    for (index, (artifact_name, meta)) in enumerate(metas)
        for download in meta["download"]
            url = download["url"]
            sha256 = download["sha256"]
            if index > 1
                print(" ")
            end
            print("{")
            print("\n    name = \"$artifact_name\";")
            print("\n    url = \"$url\";")
            print("\n    sha256 = \"$sha256\";")
            print("\n  }")
        end
    end

    print("];")
end
print("\n}")
