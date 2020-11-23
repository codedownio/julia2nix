{fetchgit}: {
  rootPackages = ["BinaryProvider" "IJulia" "Plotly" "Plots" "PyPlot"];
  closure = [{
  name = "Adapt";
  uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e";
  path = "A/Adapt";
  src = fetchgit { url = "https://github.com/JuliaGPU/Adapt.jl.git"; rev = "42c42f2221906892ceb765dbcb1a51deeffd86d7"; sha256 = "12wq44978az8a5bmx351v3ynm0sd8q0bajrh469ymyr2l0va870p"; };
} {
  name = "Artifacts";
  uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33";
  path = "A/Artifacts";
  src = fetchgit { url = "https://github.com/JuliaPackaging/Artifacts.jl.git"; rev = "c30985d8821e0cd73870b17b0ed0ce6dc44cb744"; sha256 = "0i0s26ypiwg6zyb3aqn9kiyiblkkab1mfac9plmq2jv4hggm4jfc"; };
} {
  name = "AssetRegistry";
  uuid = "bf4720bc-e11a-5d0c-854e-bdca1663c893";
  path = "A/AssetRegistry";
  src = fetchgit { url = "https://github.com/JuliaGizmos/AssetRegistry.jl.git"; rev = "b25e88db7944f98789130d7b503276bc34bc098e"; sha256 = "0xpldj08apvblgng6vndb9311gl6xxbk1f9jha8a661p2zfj0r4b"; };
} {
  name = "Base64";
  uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f";
  path = "null";
  src = null;
} {
  name = "BinDeps";
  uuid = "9e28174c-4ba2-5203-b857-d8d62c4213ee";
  path = "B/BinDeps";
  src = fetchgit { url = "https://github.com/JuliaPackaging/BinDeps.jl.git"; rev = "46cf2c1668ad07aba5a9d331bdeea994a1f13856"; sha256 = "0cgajscdqb2rsbbn4j91vgyg87siyxfa052bhfi8ha2z6m55c47y"; };
} {
  name = "BinaryProvider";
  uuid = "b99e7846-7c00-51b0-8f62-c81ae34c0232";
  path = "B/BinaryProvider";
  src = fetchgit { url = "https://github.com/JuliaPackaging/BinaryProvider.jl.git"; rev = "ecdec412a9abc8db54c0efc5548c64dfce072058"; sha256 = "00kin10n3fv5352fx3a4wh8l581702iqqhfz2sng773hkljndi9v"; };
} {
  name = "Blink";
  uuid = "ad839575-38b3-5650-b840-f874b8c74a25";
  path = "B/Blink";
  src = fetchgit { url = "https://github.com/JuliaGizmos/Blink.jl.git"; rev = "434893c1f9e9ce59be3f114641e99ef84c4d8f1a"; sha256 = "1z8r2jx8nycf6kpzqsy0pl6038c08fj3j1ibckhpzgvkvbdycnj3"; };
} {
  name = "Bzip2_jll";
  uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0";
  path = "B/Bzip2_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/Bzip2_jll.jl.git"; rev = "c3598e525718abcc440f69cc6d5f60dda0a1b61e"; sha256 = "064nfmlsg9na7z80mjsxcw54zmp53qhnwry5m9k0d0j5l2a7lzd4"; };
} {
  name = "ColorSchemes";
  uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4";
  path = "C/ColorSchemes";
  src = fetchgit { url = "https://github.com/JuliaGraphics/ColorSchemes.jl.git"; rev = "5d472aa8908568bc198564db06983913a6c2c8e7"; sha256 = "1vk0wp7zi5j5rvasvggqb66w8ixv946zbx55wj80kxzjnkmmnqvv"; };
} {
  name = "ColorTypes";
  uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f";
  path = "C/ColorTypes";
  src = fetchgit { url = "https://github.com/JuliaGraphics/ColorTypes.jl.git"; rev = "4bffea7ed1a9f0f3d1a131bbcd4b925548d75288"; sha256 = "14504hrvn36092vkbjnci9cqmddabhp6z263cqmw3jg9947xrl2q"; };
} {
  name = "Colors";
  uuid = "5ae59095-9a9b-59fe-a467-6f913c188581";
  path = "C/Colors";
  src = fetchgit { url = "https://github.com/JuliaGraphics/Colors.jl.git"; rev = "008d6bc68dea6beb6303fdc37188cb557391ebf2"; sha256 = "02lnrkb33rb4jxk9wrm9sn4aryck47l6n822yvhyc8wgcg02l4z6"; };
} {
  name = "Compat";
  uuid = "34da2185-b29b-5c13-b0c7-acf172513d20";
  path = "C/Compat";
  src = fetchgit { url = "https://github.com/JuliaLang/Compat.jl.git"; rev = "a706ff10f1cd8dab94f59fd09c0e657db8e77ff0"; sha256 = "1r63i1fz1c332k64j28f1nph82zab1h5328k8kipkbf14r92r2q2"; };
} {
  name = "Conda";
  uuid = "8f4d0f93-b110-5947-807f-2305c1781a2d";
  path = "C/Conda";
  src = fetchgit { url = "https://github.com/JuliaPy/Conda.jl.git"; rev = "7a58bb32ce5d85f8bf7559aa7c2842f9aecf52fc"; sha256 = "0mv2vn3bjcm5367hhl38zjz33bagllv2pq37aqqxjxsj3w2i1rr2"; };
} {
  name = "Contour";
  uuid = "d38c429a-6771-53c6-b99e-75d170b6e991";
  path = "C/Contour";
  src = fetchgit { url = "https://github.com/JuliaGeometry/Contour.jl.git"; rev = "d05a3a25b762720d40246d5bedf518c9c2614ef5"; sha256 = "08dn8nsxgvhy801vdxgkh61m24j6yqr14i47yqc0vmpbmpdl5abr"; };
} {
  name = "DataAPI";
  uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a";
  path = "D/DataAPI";
  src = fetchgit { url = "https://github.com/JuliaData/DataAPI.jl.git"; rev = "176e23402d80e7743fc26c19c681bfb11246af32"; sha256 = "0l4c6bzg1mjdm852jfdv4n0rigf8r5rb5k5x2whcgk17zy55xiba"; };
} {
  name = "DataStructures";
  uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8";
  path = "D/DataStructures";
  src = fetchgit { url = "https://github.com/JuliaCollections/DataStructures.jl.git"; rev = "fb0aa371da91c1ff9dc7fbed6122d3e411420b9c"; sha256 = "1r4xswdvnnlbp5rfa7i7k6kzgkwizvqwyz7jscvyqjylcs6wdsnc"; };
} {
  name = "DataValueInterfaces";
  uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464";
  path = "D/DataValueInterfaces";
  src = fetchgit { url = "https://github.com/queryverse/DataValueInterfaces.jl.git"; rev = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"; sha256 = "0g2wj6q7jj956nx6g7dk8x7w1c4l2xcmnr1kq5x8s8fild9kslg8"; };
} {
  name = "Dates";
  uuid = "ade2ca70-3891-5945-98fb-dc099432e06a";
  path = "null";
  src = null;
} {
  name = "DelimitedFiles";
  uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab";
  path = "null";
  src = null;
} {
  name = "Distributed";
  uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b";
  path = "null";
  src = null;
} {
  name = "DocStringExtensions";
  uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae";
  path = "D/DocStringExtensions";
  src = fetchgit { url = "https://github.com/JuliaDocs/DocStringExtensions.jl.git"; rev = "50ddf44c53698f5e784bbebb3f4b21c5807401b1"; sha256 = "16zlz0asj57l7mncl0chq9i0p7hibxh3f9xxk31q8ncxyzki5mk0"; };
} {
  name = "EarCut_jll";
  uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5";
  path = "E/EarCut_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/EarCut_jll.jl.git"; rev = "eabac56550a7d7e0be499125673fbff560eb8b20"; sha256 = "0d2zdpbw2zvndvc939mn2x91c6w62qn33k3d62qkshgx8ifq1nzj"; };
} {
  name = "FFMPEG";
  uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a";
  path = "F/FFMPEG";
  src = fetchgit { url = "https://github.com/JuliaIO/FFMPEG.jl.git"; rev = "9a73ffdc375be61b0e4516d83d880b265366fe1f"; sha256 = "1kwqixwhnnxs59xsw2k44xxnkx5fn4y49g58l5snfbszycxq7lls"; };
} {
  name = "FFMPEG_jll";
  uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5";
  path = "F/FFMPEG_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/FFMPEG_jll.jl.git"; rev = "3cc57ad0a213808473eafef4845a74766242e05f"; sha256 = "1vr0bk59la2i5zgrg9syxx823rphywkhns1iawhhhx92fc0wvvl1"; };
} {
  name = "FileWatching";
  uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee";
  path = "null";
  src = null;
} {
  name = "FixedPointNumbers";
  uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93";
  path = "F/FixedPointNumbers";
  src = fetchgit { url = "https://github.com/JuliaMath/FixedPointNumbers.jl.git"; rev = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"; sha256 = "0j0n40n04q9sk68wh9jq90m6c67k4ws02k41djjzkrqmpzv4rcdi"; };
} {
  name = "Formatting";
  uuid = "59287772-0a20-5a39-b81b-1366585eb4c0";
  path = "F/Formatting";
  src = fetchgit { url = "https://github.com/JuliaIO/Formatting.jl.git"; rev = "a0c901c29c0e7c763342751c0a94211d56c0de5c"; sha256 = "1argq98ndj9wm5pdf31sshmzqihwk0mx8f3f9cslfs1qzwbc18p2"; };
} {
  name = "FreeType2_jll";
  uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7";
  path = "F/FreeType2_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/FreeType2_jll.jl.git"; rev = "cbd58c9deb1d304f5a245a0b7eb841a2560cfec6"; sha256 = "1jj8y686yc4hcq0w951wq2pdnpqw98qj4nb17qm5mm7gkg0si41x"; };
} {
  name = "FriBidi_jll";
  uuid = "559328eb-81f9-559d-9380-de523a88c83c";
  path = "F/FriBidi_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/FriBidi_jll.jl.git"; rev = "0d20aed5b14dd4c9a2453c1b601d08e1149679cc"; sha256 = "19hcgrqijhbqj3bmyb1vgrb56yw6jbwcpax9vq23h8i6wqqwhrwv"; };
} {
  name = "FunctionalCollections";
  uuid = "de31a74c-ac4f-5751-b3fd-e18cd04993ca";
  path = "F/FunctionalCollections";
  src = fetchgit { url = "https://github.com/JuliaCollections/FunctionalCollections.jl.git"; rev = "04cb9cfaa6ba5311973994fe3496ddec19b6292a"; sha256 = "1lvb7xaqg1w5cqq1z5jv4fcyagb2psq9k8i7k7n2pz1qf7rwfgcd"; };
} {
  name = "GR";
  uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71";
  path = "G/GR";
  src = fetchgit { url = "https://github.com/jheinen/GR.jl.git"; rev = "cd0f34bd097d4d5eb6bbe01778cf8a7ed35f29d9"; sha256 = "1i9ba4zcg08zjis2y9mm9r1ggrx98z9b86ay54n3q1hsp07ks478"; };
} {
  name = "GeometryBasics";
  uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326";
  path = "G/GeometryBasics";
  src = fetchgit { url = "https://github.com/JuliaGeometry/GeometryBasics.jl.git"; rev = "876a906eab3be990fdcbfe1e43bb3a76f4776f72"; sha256 = "1wfwx8lnf2kg1dk6gvzaa02avbgy7ah9xqhzbpbczihyv6cp6p53"; };
} {
  name = "GeometryTypes";
  uuid = "4d00f742-c7ba-57c2-abde-4428a4b178cb";
  path = "G/GeometryTypes";
  src = fetchgit { url = "https://github.com/JuliaGeometry/GeometryTypes.jl.git"; rev = "34bfa994967e893ab2f17b864eec221b3521ba4d"; sha256 = "0iyjk14r702yl17jcdq9dd197mrhjhx5z1vwnswxarzjr5c5l12m"; };
} {
  name = "Grisu";
  uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe";
  path = "G/Grisu";
  src = fetchgit { url = "https://github.com/JuliaAttic/Grisu.jl.git"; rev = "03d381f65183cb2d0af8b3425fde97263ce9a995"; sha256 = "123z5wy4yzlqa2lbdrs15sj02hjdnckb1lyjcvaxjs4iz63lnpyv"; };
} {
  name = "HTTP";
  uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3";
  path = "H/HTTP";
  src = fetchgit { url = "https://github.com/JuliaWeb/HTTP.jl.git"; rev = "c7ec02c4c6a039a98a15f955462cd7aea5df4508"; sha256 = "1bbkgvf8hbzs3483k7kzjrrpzbcs8fk1nwaagkvwr87rbm7lz367"; };
} {
  name = "Hiccup";
  uuid = "9fb69e20-1954-56bb-a84f-559cc56a8ff7";
  path = "H/Hiccup";
  src = fetchgit { url = "https://github.com/JunoLab/Hiccup.jl.git"; rev = "6187bb2d5fcbb2007c39e7ac53308b0d371124bd"; sha256 = "0m6my7d48658x4v0glv1006f0yvqd49f875b74q7kq3y6a9sxy5z"; };
} {
  name = "IJulia";
  uuid = "7073ff75-c697-5162-941a-fcdaad2a7d2a";
  path = "I/IJulia";
  src = fetchgit { url = "https://github.com/JuliaLang/IJulia.jl.git"; rev = "fbbbdc4c1fcb9634e2c78468606885bf9187e5cc"; sha256 = "1xjxpnfry43wwsh1jszlwf7hx18jqq4plh660sg2inrr9wymdagx"; };
} {
  name = "IniFile";
  uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f";
  path = "I/IniFile";
  src = fetchgit { url = "https://github.com/JuliaIO/IniFile.jl.git"; rev = "098e4d2c533924c921f9f9847274f2ad89e018b8"; sha256 = "19cn41w04hikrqdzlxhrgf21rfqhkvj9x1zvwh3yz9hqbf350xs9"; };
} {
  name = "InteractiveUtils";
  uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240";
  path = "null";
  src = null;
} {
  name = "IterTools";
  uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e";
  path = "I/IterTools";
  src = fetchgit { url = "https://github.com/JuliaCollections/IterTools.jl.git"; rev = "05110a2ab1fc5f932622ffea2a003221f4782c18"; sha256 = "0haf974kcqj6arv4if97ahs4w3dmvslh6ab3hl57r9s41ic36xdq"; };
} {
  name = "IteratorInterfaceExtensions";
  uuid = "82899510-4779-5014-852e-03e436cf321d";
  path = "I/IteratorInterfaceExtensions";
  src = fetchgit { url = "https://github.com/queryverse/IteratorInterfaceExtensions.jl.git"; rev = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"; sha256 = "1slpay1dhja8f9gy6z7b3psgvgcknn963dvfqqakvg1grk9ppa09"; };
} {
  name = "JLLWrappers";
  uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210";
  path = "J/JLLWrappers";
  src = fetchgit { url = "https://github.com/JuliaPackaging/JLLWrappers.jl.git"; rev = "c70593677bbf2c3ccab4f7500d0f4dacfff7b75c"; sha256 = "0fxxs1wlyb9s0llvdgnhzrx7c3i6i254rd1xbfn6bnmi36gar84j"; };
} {
  name = "JSExpr";
  uuid = "97c1335a-c9c5-57fe-bc5d-ec35cebe8660";
  path = "J/JSExpr";
  src = fetchgit { url = "https://github.com/JuliaGizmos/JSExpr.jl.git"; rev = "829f37792c9a63904a95c3c579e3b5847b40802a"; sha256 = "10dwpzxxy3ri4w5fzg0j2havk9vjx6mrwf4alq9zl6mvzbjkj5ha"; };
} {
  name = "JSON";
  uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6";
  path = "J/JSON";
  src = fetchgit { url = "https://github.com/JuliaIO/JSON.jl.git"; rev = "81690084b6198a2e1da36fcfda16eeca9f9f24e4"; sha256 = "1f9k613kbknmp4fgjxvjaw4d5sfbx8a5hmcszmp1w9rqfqngjx9m"; };
} {
  name = "LAME_jll";
  uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d";
  path = "L/LAME_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/LAME_jll.jl.git"; rev = "df381151e871f41ee86cee4f5f6fd598b8a68826"; sha256 = "04c1dgfgs0s6x1g6rwvzlfvwvhh533j3sagbf50k446dd0yxh8cp"; };
} {
  name = "LaTeXStrings";
  uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f";
  path = "L/LaTeXStrings";
  src = fetchgit { url = "https://github.com/stevengj/LaTeXStrings.jl.git"; rev = "c7aebfecb1a60d59c0fe023a68ec947a208b1e6b"; sha256 = "09khb7hiw6g5sgckr8issmhaxg9wzfz6jw1sb6fkfyx1m69aw150"; };
} {
  name = "Latexify";
  uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316";
  path = "L/Latexify";
  src = fetchgit { url = "https://github.com/korsbo/Latexify.jl.git"; rev = "26373ba217b1ade3daf14c73505377d614fd3b51"; sha256 = "1d5asjwvd9i27m4xg6idhk7dnyiv31vw4fcac62ba4dpp50rxa3l"; };
} {
  name = "Lazy";
  uuid = "50d2b5c4-7a5e-59d5-8109-a42b560f39c0";
  path = "L/Lazy";
  src = fetchgit { url = "https://github.com/MikeInnes/Lazy.jl.git"; rev = "1370f8202dac30758f3c345f9909b97f53d87d3f"; sha256 = "169kcbb7zay02x083g9x1q1y33lm68xnbr08lskd44rg1dj0z38s"; };
} {
  name = "LibGit2";
  uuid = "76f85450-5226-5b5a-8eaa-529ad045b433";
  path = "null";
  src = null;
} {
  name = "LibVPX_jll";
  uuid = "dd192d2f-8180-539f-9fb4-cc70b1dcf69a";
  path = "L/LibVPX_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/LibVPX_jll.jl.git"; rev = "85fcc80c3052be96619affa2fe2e6d2da3908e11"; sha256 = "097mp941syns63x49a8qvmqwaa8md7c6ra55mi8gaqzb3w4ywpsc"; };
} {
  name = "Libdl";
  uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb";
  path = "null";
  src = null;
} {
  name = "LinearAlgebra";
  uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e";
  path = "null";
  src = null;
} {
  name = "Logging";
  uuid = "56ddb016-857b-54e1-b83d-db4d58db5568";
  path = "null";
  src = null;
} {
  name = "MacroTools";
  uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09";
  path = "M/MacroTools";
  src = fetchgit { url = "https://github.com/FluxML/MacroTools.jl.git"; rev = "6a8a2a625ab0dea913aba95c11370589e0239ff0"; sha256 = "0k4z2hyasd9cwxf4l61zk3w4ajs44k69wx6z1ghdn8f5p8xy217f"; };
} {
  name = "Markdown";
  uuid = "d6f4376e-aef5-505a-96c1-9c027394607a";
  path = "null";
  src = null;
} {
  name = "MbedTLS";
  uuid = "739be429-bea8-5141-9913-cc70e7f3736d";
  path = "M/MbedTLS";
  src = fetchgit { url = "https://github.com/JuliaLang/MbedTLS.jl.git"; rev = "1c38e51c3d08ef2278062ebceade0e46cefc96fe"; sha256 = "0zjzf2r57l24n3k0gcqkvx3izwn5827iv9ak0lqix0aa5967wvfb"; };
} {
  name = "MbedTLS_jll";
  uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1";
  path = "M/MbedTLS_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/MbedTLS_jll.jl.git"; rev = "c0b1286883cac4e2b617539de41111e0776d02e8"; sha256 = "0zn4laaqcn7n50q7pdlwq5ylv33250j611jyqx5070f891jlp23l"; };
} {
  name = "Measures";
  uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e";
  path = "M/Measures";
  src = fetchgit { url = "https://github.com/JuliaGraphics/Measures.jl.git"; rev = "e498ddeee6f9fdb4551ce855a46f54dbd900245f"; sha256 = "0j34psrdijnqqn9zv0r2sknr1p9q0mmbjvjhmjra37bb5fh2gk8l"; };
} {
  name = "Missings";
  uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28";
  path = "M/Missings";
  src = fetchgit { url = "https://github.com/JuliaData/Missings.jl.git"; rev = "ed61674a0864832495ffe0a7e889c0da76b0f4c8"; sha256 = "0d1npi7nrwnhj6iiazrb2hvvi8rpbhqimjpij7wmvclr60m5dlms"; };
} {
  name = "Mmap";
  uuid = "a63ad114-7e13-5084-954f-fe012c677804";
  path = "null";
  src = null;
} {
  name = "Mustache";
  uuid = "ffc61752-8dc7-55ee-8c37-f3e9cdd09e70";
  path = "M/Mustache";
  src = fetchgit { url = "https://github.com/jverzani/Mustache.jl.git"; rev = "f5d718790ff475b5b8ab9c1599ed105f0f24f253"; sha256 = "0r8rf7i7zpbqx1z58nv165jlpjmizm00mnyg8hn6msjg2jb5v05v"; };
} {
  name = "Mux";
  uuid = "a975b10e-0019-58db-a62f-e48ff68538c9";
  path = "M/Mux";
  src = fetchgit { url = "https://github.com/JuliaWeb/Mux.jl.git"; rev = "8e917fbe96da22628feae3f01b4f100e709ab746"; sha256 = "1n50ynfx5adgmlmaa1gwrmxli3p05z3g69x7i9br74zvy8ph6kbj"; };
} {
  name = "NaNMath";
  uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3";
  path = "N/NaNMath";
  src = fetchgit { url = "https://github.com/mlubin/NaNMath.jl.git"; rev = "c84c576296d0e2fbb3fc134d3e09086b3ea617cd"; sha256 = "0w1rbb0jlfiq265vlmkai60s1gqq1gfipnrkgl9ivfbd5r68msg0"; };
} {
  name = "Observables";
  uuid = "510215fc-4207-5dde-b226-833fc4488ee2";
  path = "O/Observables";
  src = fetchgit { url = "https://github.com/JuliaGizmos/Observables.jl.git"; rev = "635fe10760447cfa86f5118edf2f47eb864fb495"; sha256 = "1zzq4qq4m8y8lhqygiij120wjm8dd4y949xfgjdfihqq4bakgx2z"; };
} {
  name = "Ogg_jll";
  uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051";
  path = "O/Ogg_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/Ogg_jll.jl.git"; rev = "a42c0f138b9ebe8b58eba2271c5053773bde52d0"; sha256 = "043229ikcrnnggdcxl92rgm0v2r503025k2nv532505fj321l6xw"; };
} {
  name = "OpenSSL_jll";
  uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95";
  path = "O/OpenSSL_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/OpenSSL_jll.jl.git"; rev = "71bbbc616a1d710879f5a1021bcba65ffba6ce58"; sha256 = "15317wll2b1nks8ayg633ar8d9n3sil2nn4rrx165jdgsf2zndij"; };
} {
  name = "Opus_jll";
  uuid = "91d4177d-7536-5919-b921-800302f37372";
  path = "O/Opus_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/Opus_jll.jl.git"; rev = "f9d57f4126c39565e05a2b0264df99f497fc6f37"; sha256 = "12wpf9vydwx0y5h5hlyqj9h9zki2k91j8ynzyfzbl3pfkzm6y9ji"; };
} {
  name = "OrderedCollections";
  uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d";
  path = "O/OrderedCollections";
  src = fetchgit { url = "https://github.com/JuliaCollections/OrderedCollections.jl.git"; rev = "16c08bf5dba06609fe45e30860092d6fa41fde7b"; sha256 = "0yxn65q44g2hkd8nq3wgr2hafcyk1q818hl42pmwg29j1hdqwp1v"; };
} {
  name = "Parsers";
  uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0";
  path = "P/Parsers";
  src = fetchgit { url = "https://github.com/JuliaData/Parsers.jl.git"; rev = "6fa4202675c05ba0f8268a6ddf07606350eda3ce"; sha256 = "1s7rfl3x4lgixw38mzkv5sl317h228nf5inc0si0y2hk0cjif7lr"; };
} {
  name = "Pidfile";
  uuid = "fa939f87-e72e-5be4-a000-7fc836dbe307";
  path = "P/Pidfile";
  src = fetchgit { url = "https://github.com/vtjnash/Pidfile.jl.git"; rev = "1be8660b2064893cd2dae4bd004b589278e4440d"; sha256 = "0y4812m3wgsdq3fljrpldjvlizfrp7zp190j15v87wm1wy2mlzb8"; };
} {
  name = "Pkg";
  uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f";
  path = "null";
  src = null;
} {
  name = "PlotThemes";
  uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a";
  path = "P/PlotThemes";
  src = fetchgit { url = "https://github.com/JuliaPlots/PlotThemes.jl.git"; rev = "c6f5ea535551b3b16835134697f0c65d06c94b91"; sha256 = "0bhchdwp9mdvgbr3cqxxgjhxi8sl0p4lj5yyh5hj5wxwxkdcx1p7"; };
} {
  name = "PlotUtils";
  uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043";
  path = "P/PlotUtils";
  src = fetchgit { url = "https://github.com/JuliaPlots/PlotUtils.jl.git"; rev = "4e098f88dad9a2b518b83124a116be1c49e2b2bf"; sha256 = "19vcvaavlfzawjcnirl76v3jlwwgap6n8w8h4b5038xq37id1mxr"; };
} {
  name = "Plotly";
  uuid = "58dd65bb-95f3-509e-9936-c39a10fdeae7";
  path = "P/Plotly";
  src = fetchgit { url = "https://github.com/plotly/Plotly.jl.git"; rev = "7634def3aea4a58d8f13687e9c72b2c1bfaa61ce"; sha256 = "0r803bvcbm9jcpdw3mlfira8c3g6jk47npc7qcaaha73z2hp0kdc"; };
} {
  name = "PlotlyBase";
  uuid = "a03496cd-edff-5a9b-9e67-9cda94a718b5";
  path = "P/PlotlyBase";
  src = fetchgit { url = "https://github.com/sglyon/PlotlyBase.jl.git"; rev = "b33809ab5a35bf41d1fd7c851b52e32004392933"; sha256 = "09arns8arck1xc7hi6vpib0ac2c8n9j74zvh5nnnwsx1s75ki1yf"; };
} {
  name = "PlotlyJS";
  uuid = "f0f68f2c-4968-5e81-91da-67840de0976a";
  path = "P/PlotlyJS";
  src = fetchgit { url = "https://github.com/JuliaPlots/PlotlyJS.jl.git"; rev = "d55517585b572623b61857dadf74e6f53812c2fb"; sha256 = "1d6p13d00120zgmlff8spgz3hvdmnqiismh64jnxls5nsi468zpn"; };
} {
  name = "Plots";
  uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80";
  path = "P/Plots";
  src = fetchgit { url = "https://github.com/JuliaPlots/Plots.jl.git"; rev = "f4425bbd5f313b074d6ce3b86d80c0ad16bf7326"; sha256 = "14f6867hhpaf6z6lbl9ph8rhlgs1n4l3xk40z5lji02blqaial8r"; };
} {
  name = "Printf";
  uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7";
  path = "null";
  src = null;
} {
  name = "PyCall";
  uuid = "438e738f-606a-5dbb-bf0a-cddfbfd45ab0";
  path = "P/PyCall";
  src = fetchgit { url = "https://github.com/JuliaPy/PyCall.jl.git"; rev = "b6dff5fa725eff4f775f472acd86756d6e31fb02"; sha256 = "09knrc2sj0v70276c8zvm4b3an77iffcvy4bimciqn3ax1bp09aq"; };
} {
  name = "PyPlot";
  uuid = "d330b81b-6aea-500a-939a-2ce795aea3ee";
  path = "P/PyPlot";
  src = fetchgit { url = "https://github.com/JuliaPy/PyPlot.jl.git"; rev = "67dde2482fe1a72ef62ed93f8c239f947638e5a2"; sha256 = "0lvnraw8i851xnlfyd8d1p1bp8nrr1s9z56fw6znlmakpjjwny39"; };
} {
  name = "REPL";
  uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb";
  path = "null";
  src = null;
} {
  name = "Random";
  uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c";
  path = "null";
  src = null;
} {
  name = "RecipesBase";
  uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01";
  path = "R/RecipesBase";
  src = fetchgit { url = "https://github.com/JuliaPlots/RecipesBase.jl.git"; rev = "6ee6c35fe69e79e17c455a386c1ccdc66d9f7da4"; sha256 = "0x5k1g0r2gcdsjna796d1xw9c6m9mkjbdrcqm3dbzsmc8ix7if2v"; };
} {
  name = "RecipesPipeline";
  uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c";
  path = "R/RecipesPipeline";
  src = fetchgit { url = "https://github.com/JuliaPlots/RecipesPipeline.jl.git"; rev = "4a325c9bcc2d8e62a8f975b9666d0251d53b63b9"; sha256 = "1w9q7sdw9k0kljb597jdq74gcpq98a9vmb4sw300ccn52alf6xp2"; };
} {
  name = "Reexport";
  uuid = "189a3867-3050-52da-a836-e630ba90ab69";
  path = "R/Reexport";
  src = fetchgit { url = "https://github.com/simonster/Reexport.jl.git"; rev = "7b1d07f411bc8ddb7977ec7f377b97b158514fe0"; sha256 = "1kl3b31db1z5lvb49fdcibixhqhdl7ka9rv3qh9qzpz8jdiwsbdv"; };
} {
  name = "Requires";
  uuid = "ae029012-a4dd-5104-9daa-d747884805df";
  path = "R/Requires";
  src = fetchgit { url = "https://github.com/JuliaPackaging/Requires.jl.git"; rev = "28faf1c963ca1dc3ec87f166d92982e3c4a1f66d"; sha256 = "07qxl6pcj6aqkq6b9k7a1nml0a0sdachig73ixzvy8mcc6zjim2q"; };
} {
  name = "SHA";
  uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce";
  path = "S/SHA";
  src = null;
} {
  name = "Serialization";
  uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b";
  path = "null";
  src = null;
} {
  name = "SharedArrays";
  uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383";
  path = "null";
  src = null;
} {
  name = "Showoff";
  uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f";
  path = "S/Showoff";
  src = fetchgit { url = "https://github.com/JuliaGraphics/Showoff.jl.git"; rev = "ee010d8f103468309b8afac4abb9be2e18ff1182"; sha256 = "0g9wqn9g3zravjc7bvdbf2cpmafy2gfw7s9bvrl7cdz3vpd4sy0x"; };
} {
  name = "Sockets";
  uuid = "6462fe0b-24de-5631-8697-dd941f90decc";
  path = "null";
  src = null;
} {
  name = "SoftGlobalScope";
  uuid = "b85f4697-e234-5449-a836-ec8e2f98b302";
  path = "S/SoftGlobalScope";
  src = fetchgit { url = "https://github.com/stevengj/SoftGlobalScope.jl.git"; rev = "986ec2b6162ccb95de5892ed17832f95badf770c"; sha256 = "1n3l0al1vw5jpb4k9a29a71666cdb617nmiqg34wcmyfzrxpvv39"; };
} {
  name = "SortingAlgorithms";
  uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c";
  path = "S/SortingAlgorithms";
  src = fetchgit { url = "https://github.com/JuliaCollections/SortingAlgorithms.jl.git"; rev = "03f5898c9959f8115e30bc7226ada7d0df554ddd"; sha256 = "1nz96sccgl6h6aknck59gmy1yrzx356kk9z68svj2g6yialprv1j"; };
} {
  name = "SparseArrays";
  uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf";
  path = "null";
  src = null;
} {
  name = "StaticArrays";
  uuid = "90137ffa-7385-5640-81b9-e52037218182";
  path = "S/StaticArrays";
  src = fetchgit { url = "https://github.com/JuliaArrays/StaticArrays.jl.git"; rev = "016d1e1a00fabc556473b07161da3d39726ded35"; sha256 = "167rggnx7dknlfghdsv8hm2zhlz3036lnd24dr5vci4slvvd82j6"; };
} {
  name = "Statistics";
  uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2";
  path = "null";
  src = null;
} {
  name = "StatsBase";
  uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91";
  path = "S/StatsBase";
  src = fetchgit { url = "https://github.com/JuliaStats/StatsBase.jl.git"; rev = "7bab7d4eb46b225b35179632852b595a3162cb61"; sha256 = "02rbzj1v1dpp95pbmnk1w01i8730rqlah6qk1gym6vs6a7qy44g5"; };
} {
  name = "StructArrays";
  uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a";
  path = "S/StructArrays";
  src = fetchgit { url = "https://github.com/JuliaArrays/StructArrays.jl.git"; rev = "8099ed9fb90b6e754d6ba8c6ed8670f010eadca0"; sha256 = "1hhg8vdx2cs15vxw22rmk94zcnxibxvcsfgd8kz3pmqxsm4rz7q4"; };
} {
  name = "TableTraits";
  uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c";
  path = "T/TableTraits";
  src = fetchgit { url = "https://github.com/queryverse/TableTraits.jl.git"; rev = "b1ad568ba658d8cbb3b892ed5380a6f3e781a81e"; sha256 = "0lzb9xqnhgjbvkscc4p9vw3pzajm3a5a6ayv6byqc53ws8fxqk2v"; };
} {
  name = "Tables";
  uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c";
  path = "T/Tables";
  src = fetchgit { url = "https://github.com/JuliaData/Tables.jl.git"; rev = "24a584cf65e2cfabdadc21694fb69d2e74c82b44"; sha256 = "1s8zglyq3gll75qmba3apy50d2hh3nfsd8zkwi1mncd79lwmm7y8"; };
} {
  name = "Test";
  uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40";
  path = "null";
  src = null;
} {
  name = "URIParser";
  uuid = "30578b45-9adc-5946-b283-645ec420af67";
  path = "U/URIParser";
  src = fetchgit { url = "https://github.com/JuliaWeb/URIParser.jl.git"; rev = "53a9f49546b8d2dd2e688d216421d050c9a31d0d"; sha256 = "13philxa4dzbfkydybsik71nwx85p00m85wn8fickw6xs84ac6y4"; };
} {
  name = "UUIDs";
  uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4";
  path = "null";
  src = null;
} {
  name = "Unicode";
  uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5";
  path = "null";
  src = null;
} {
  name = "VersionParsing";
  uuid = "81def892-9a0e-5fdd-b105-ffc91e053289";
  path = "V/VersionParsing";
  src = fetchgit { url = "https://github.com/JuliaInterop/VersionParsing.jl.git"; rev = "80229be1f670524750d905f8fc8148e5a8c4537f"; sha256 = "060s72dsnpavgilf7f7315lw2sn4npk8lkndmj6bg7i23hppiwva"; };
} {
  name = "WebIO";
  uuid = "0f1e0344-ec1d-5b48-a673-e5cf874b6c29";
  path = "W/WebIO";
  src = fetchgit { url = "https://github.com/JuliaGizmos/WebIO.jl.git"; rev = "adc25e225bc334c7df6eec3b39496edfc451cc38"; sha256 = "0xynakvw0fzdg5z1ph91hld1lr14fw48k58wqyfn0pc50kz6a3qz"; };
} {
  name = "WebSockets";
  uuid = "104b5d7c-a370-577a-8038-80a2059c5097";
  path = "W/WebSockets";
  src = fetchgit { url = "https://github.com/JuliaWeb/WebSockets.jl.git"; rev = "13f763d38c7a05688938808b49cb29b18b60c8c8"; sha256 = "1fpvskbax88x059lwnl211ps13j8s2jf97agwwr69sir11i0xh51"; };
} {
  name = "Widgets";
  uuid = "cc8bc4a8-27d6-5769-a93b-9d913e69aa62";
  path = "W/Widgets";
  src = fetchgit { url = "https://github.com/piever/Widgets.jl.git"; rev = "fc0feda91b3fef7fe6948ee09bb628f882b49ca4"; sha256 = "075hvnc79ig3ipi55gk313z62zwdhg3id5jh596icxfjxmyg05aj"; };
} {
  name = "ZMQ";
  uuid = "c2297ded-f4af-51ae-bb23-16f91089e4e1";
  path = "Z/ZMQ";
  src = fetchgit { url = "https://github.com/JuliaInterop/ZMQ.jl.git"; rev = "fc68e8a3719166950a0f3e390a14c7302c48f8de"; sha256 = "1pn1gi11h7m7m5nnal0jqm2gcf1p6rzqqzd7wq2qb5vb5vi8p1zv"; };
} {
  name = "ZeroMQ_jll";
  uuid = "8f1865be-045e-5c20-9c9f-bfbfb0764568";
  path = "Z/ZeroMQ_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/ZeroMQ_jll.jl.git"; rev = "bba617292e040408cb72baa03c20f43583bf239f"; sha256 = "135c7zk1kkwyazdj487sz17ka6wyigmkk2i5kq70i9f7nk2sx059"; };
} {
  name = "Zlib_jll";
  uuid = "83775a58-1f1d-513f-b197-d71354ab007a";
  path = "Z/Zlib_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/Zlib_jll.jl.git"; rev = "320228915c8debb12cb434c59057290f0834dbf6"; sha256 = "0f0dznr9y5zq1yllin61v7qlk8qhac0n71vkmylsjb7bvc77136w"; };
} {
  name = "libass_jll";
  uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0";
  path = "L/libass_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/libass_jll.jl.git"; rev = "acc685bcf777b2202a904cdcb49ad34c2fa1880c"; sha256 = "0b6r43bak6ihy0lmlcm0bkf6qnmqp3z1p07b1qv6jkrf1v3v4kk2"; };
} {
  name = "libfdk_aac_jll";
  uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280";
  path = "L/libfdk_aac_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/libfdk_aac_jll.jl.git"; rev = "7a5780a0d9c6864184b3a2eeeb833a0c871f00ab"; sha256 = "103lf3im7idi089pxfh863xixhvibrfjpvkg9kspqw991q3yncgz"; };
} {
  name = "libvorbis_jll";
  uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a";
  path = "L/libvorbis_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/libvorbis_jll.jl.git"; rev = "fa14ac25af7a4b8a7f61b287a124df7aab601bcd"; sha256 = "1vnlllkmm8s1n6ks4d9jlpbxfiy4hvn9myblqxic3r70di49frhi"; };
} {
  name = "x264_jll";
  uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a";
  path = "X/x264_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/x264_jll.jl.git"; rev = "d713c1ce4deac133e3334ee12f4adff07f81778f"; sha256 = "0h6kvqb9cd459girgiyp7fjhxdfwa7dfrhpfbjk08kllc6m2ldyl"; };
} {
  name = "x265_jll";
  uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76";
  path = "X/x265_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/x265_jll.jl.git"; rev = "487da2f8f2f0c8ee0e83f39d13037d6bbf0a45ab"; sha256 = "019f6wpwgp0jjvzjw2310nk9a96nw7z16lq6vgwldj240dgik2hf"; };
}];
}
