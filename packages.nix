{fetchgit}: [{
  name = "Adapt";
  uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e";
  githash = "42c42f2221906892ceb765dbcb1a51deeffd86d7";
  path = "A/Adapt";
  src = fetchgit { url = "https://github.com/JuliaGPU/Adapt.jl.git"; sha256 = "03gk523py062gad3pfbjzl96kzfghl6rqxrh86ziajlffi4a4jcd"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Artifacts";
  uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33";
  githash = "c30985d8821e0cd73870b17b0ed0ce6dc44cb744";
  path = "A/Artifacts";
  src = fetchgit { url = "https://github.com/JuliaPackaging/Artifacts.jl.git"; sha256 = "12ryiyd1qfphvby4c4wa70nxiyimkbmfh133fglhn31l6p94cjkl"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "AssetRegistry";
  uuid = "bf4720bc-e11a-5d0c-854e-bdca1663c893";
  githash = "b25e88db7944f98789130d7b503276bc34bc098e";
  path = "A/AssetRegistry";
  src = fetchgit { url = "https://github.com/JuliaGizmos/AssetRegistry.jl.git"; sha256 = "1gx92m9j7j2fikamh609j3v7x1sg558gqkjzx214vq4g99d6rfh8"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Base64";
  uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "BinDeps";
  uuid = "9e28174c-4ba2-5203-b857-d8d62c4213ee";
  githash = "46cf2c1668ad07aba5a9d331bdeea994a1f13856";
  path = "B/BinDeps";
  src = fetchgit { url = "https://github.com/JuliaPackaging/BinDeps.jl.git"; sha256 = "1y49d6568872nxa3ychgjqa5201g4bqkpg8rga6f12qmirqiihj9"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "BinaryProvider";
  uuid = "b99e7846-7c00-51b0-8f62-c81ae34c0232";
  githash = "ecdec412a9abc8db54c0efc5548c64dfce072058";
  path = "B/BinaryProvider";
  src = fetchgit { url = "https://github.com/JuliaPackaging/BinaryProvider.jl.git"; sha256 = "158x16sa33w7f47il2kaccqj4pwjmiixln003lyxpcgcri6dbcnq"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Blink";
  uuid = "ad839575-38b3-5650-b840-f874b8c74a25";
  githash = "434893c1f9e9ce59be3f114641e99ef84c4d8f1a";
  path = "B/Blink";
  src = fetchgit { url = "https://github.com/JuliaGizmos/Blink.jl.git"; sha256 = "1h0pp8m2gr8sq1pcljp6xa7l9lxm21nma3hw0cq1gfyfswbph468"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Bzip2_jll";
  uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0";
  githash = "c3598e525718abcc440f69cc6d5f60dda0a1b61e";
  path = "B/Bzip2_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/Bzip2_jll.jl.git"; sha256 = "075af2cn80lqqiqhs5b7avzzri7llkqkxskcj65h8p0q0nqqibjs"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "ColorSchemes";
  uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4";
  githash = "5d472aa8908568bc198564db06983913a6c2c8e7";
  path = "C/ColorSchemes";
  src = fetchgit { url = "https://github.com/JuliaGraphics/ColorSchemes.jl.git"; sha256 = "04ngyyyjp786idswdlscsksh74pvk74z2pav3b7f3rlwxdx7285d"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "ColorTypes";
  uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f";
  githash = "4bffea7ed1a9f0f3d1a131bbcd4b925548d75288";
  path = "C/ColorTypes";
  src = fetchgit { url = "https://github.com/JuliaGraphics/ColorTypes.jl.git"; sha256 = "0xb5vzryziw79a1l76vqvs80nh0gjim3nv1ydlf3bqxbd0fr0ii7"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Colors";
  uuid = "5ae59095-9a9b-59fe-a467-6f913c188581";
  githash = "008d6bc68dea6beb6303fdc37188cb557391ebf2";
  path = "C/Colors";
  src = fetchgit { url = "https://github.com/JuliaGraphics/Colors.jl.git"; sha256 = "1wzi24nbs96wg1c2vh14hp51illcjzaf2l20nix5ndpjhchf4jg5"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Compat";
  uuid = "34da2185-b29b-5c13-b0c7-acf172513d20";
  githash = "a706ff10f1cd8dab94f59fd09c0e657db8e77ff0";
  path = "C/Compat";
  src = fetchgit { url = "https://github.com/JuliaLang/Compat.jl.git"; sha256 = "1l6qxwmydpjhp27sq1kc28my8qyavw0ckix43nrwgdsb1v1vbi5d"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Conda";
  uuid = "8f4d0f93-b110-5947-807f-2305c1781a2d";
  githash = "7a58bb32ce5d85f8bf7559aa7c2842f9aecf52fc";
  path = "C/Conda";
  src = fetchgit { url = "https://github.com/JuliaPy/Conda.jl.git"; sha256 = "05nhlg7had6qv44avghrjy71nd1n7d3bcjiaflxbbma4rinh395q"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Contour";
  uuid = "d38c429a-6771-53c6-b99e-75d170b6e991";
  githash = "d05a3a25b762720d40246d5bedf518c9c2614ef5";
  path = "C/Contour";
  src = fetchgit { url = "https://github.com/JuliaGeometry/Contour.jl.git"; sha256 = "1nw11vqs62bzrzm2bq6cdsdqzlnk4xvmhyhs46n2jq5427k35gic"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "DataAPI";
  uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a";
  githash = "176e23402d80e7743fc26c19c681bfb11246af32";
  path = "D/DataAPI";
  src = fetchgit { url = "https://github.com/JuliaData/DataAPI.jl.git"; sha256 = "1lw8brq73p34wjhdfc50y9035qfmhfwyazxv515f9cm1h8va5vd8"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "DataStructures";
  uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8";
  githash = "fb0aa371da91c1ff9dc7fbed6122d3e411420b9c";
  path = "D/DataStructures";
  src = fetchgit { url = "https://github.com/JuliaCollections/DataStructures.jl.git"; sha256 = "1v617ifd527xkfsa3nqrvd9dqdppbbkspabrn4d0ih26kzbvn2z1"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "DataValueInterfaces";
  uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464";
  githash = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6";
  path = "D/DataValueInterfaces";
  src = fetchgit { url = "https://github.com/queryverse/DataValueInterfaces.jl.git"; sha256 = "13cy8m3wbzf2f99ff61d51v1gr6am5p68v3y7ar3bxfhr4w8i9y0"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Dates";
  uuid = "ade2ca70-3891-5945-98fb-dc099432e06a";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "DelimitedFiles";
  uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "Distributed";
  uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "DocStringExtensions";
  uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae";
  githash = "50ddf44c53698f5e784bbebb3f4b21c5807401b1";
  path = "D/DocStringExtensions";
  src = fetchgit { url = "https://github.com/JuliaDocs/DocStringExtensions.jl.git"; sha256 = "1z8m8vgz2zvh4ddkisz9m1s30iy62dzch5r7wp5m778j23nqxvd2"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "EarCut_jll";
  uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5";
  githash = "eabac56550a7d7e0be499125673fbff560eb8b20";
  path = "E/EarCut_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/EarCut_jll.jl.git"; sha256 = "0lvjgzbqhz6jg5nl5d5svi9fv95rrkc04pkply9narswgszn1vqa"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "FFMPEG";
  uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a";
  githash = "9a73ffdc375be61b0e4516d83d880b265366fe1f";
  path = "F/FFMPEG";
  src = fetchgit { url = "https://github.com/JuliaIO/FFMPEG.jl.git"; sha256 = "07x1jdrv90srmdprja6pjns6qzzazippq0471y3jbdsk40gbdiix"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "FFMPEG_jll";
  uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5";
  githash = "3cc57ad0a213808473eafef4845a74766242e05f";
  path = "F/FFMPEG_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/FFMPEG_jll.jl.git"; sha256 = "17b9ihvzh8zkgr33z420k5dvwq0fkb1a4j7v4454pagl2r07dwgs"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "FileWatching";
  uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "FixedPointNumbers";
  uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93";
  githash = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc";
  path = "F/FixedPointNumbers";
  src = fetchgit { url = "https://github.com/JuliaMath/FixedPointNumbers.jl.git"; sha256 = "0scfmifgry6rgsqisjd8l0kwym32yv3353j9v3rhpmj5why8dpaf"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Formatting";
  uuid = "59287772-0a20-5a39-b81b-1366585eb4c0";
  githash = "a0c901c29c0e7c763342751c0a94211d56c0de5c";
  path = "F/Formatting";
  src = fetchgit { url = "https://github.com/JuliaIO/Formatting.jl.git"; sha256 = "01l7k5lyjwg9id41rikviqq47mhjc4994cr62bj4sbgh74097xxp"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "FreeType2_jll";
  uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7";
  githash = "cbd58c9deb1d304f5a245a0b7eb841a2560cfec6";
  path = "F/FreeType2_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/FreeType2_jll.jl.git"; sha256 = "0vh5r0wv61gmkmr1a5wvgc171b6zydgxr9dyxw0agyhzd1lcxf4b"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "FriBidi_jll";
  uuid = "559328eb-81f9-559d-9380-de523a88c83c";
  githash = "0d20aed5b14dd4c9a2453c1b601d08e1149679cc";
  path = "F/FriBidi_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/FriBidi_jll.jl.git"; sha256 = "13jqs0wyh0l2a5ij8vmm0fkzp5q034c9c2q21cq1y1wmviqwm7dq"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "FunctionalCollections";
  uuid = "de31a74c-ac4f-5751-b3fd-e18cd04993ca";
  githash = "04cb9cfaa6ba5311973994fe3496ddec19b6292a";
  path = "F/FunctionalCollections";
  src = fetchgit { url = "https://github.com/JuliaCollections/FunctionalCollections.jl.git"; sha256 = "0376ykh6nrzyfii4208grc2lblrdsh36d8hm4lf78g7liwacmr4l"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "GR";
  uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71";
  githash = "cd0f34bd097d4d5eb6bbe01778cf8a7ed35f29d9";
  path = "G/GR";
  src = fetchgit { url = "https://github.com/jheinen/GR.jl.git"; sha256 = "0wlxk4hv3c7qp3bp0a9wgrpaw1kp5djx2jffdcllwi0p1f60waz2"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "GeometryBasics";
  uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326";
  githash = "876a906eab3be990fdcbfe1e43bb3a76f4776f72";
  path = "G/GeometryBasics";
  src = fetchgit { url = "https://github.com/JuliaGeometry/GeometryBasics.jl.git"; sha256 = "1rzii7mbp9paxdlyjaszf3z9jxg03vpy8py3syrhh2hy8s9wg5zj"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "GeometryTypes";
  uuid = "4d00f742-c7ba-57c2-abde-4428a4b178cb";
  githash = "34bfa994967e893ab2f17b864eec221b3521ba4d";
  path = "G/GeometryTypes";
  src = fetchgit { url = "https://github.com/JuliaGeometry/GeometryTypes.jl.git"; sha256 = "16gx7sjgs8ajskyxlda5mr2kx1yi6nxkyh3134qmzyzxahiv3iip"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Grisu";
  uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe";
  githash = "03d381f65183cb2d0af8b3425fde97263ce9a995";
  path = "G/Grisu";
  src = fetchgit { url = "https://github.com/JuliaAttic/Grisu.jl.git"; sha256 = "1hjhqdipa5v2ndy6hls125081n8cas477zc7mzjibagl05n497g0"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "HTTP";
  uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3";
  githash = "c7ec02c4c6a039a98a15f955462cd7aea5df4508";
  path = "H/HTTP";
  src = fetchgit { url = "https://github.com/JuliaWeb/HTTP.jl.git"; sha256 = "1dvi9kfdqfqz65120a2ckz70rhlx3dq4z09mxcz3dy1dyd8nqg3w"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Hiccup";
  uuid = "9fb69e20-1954-56bb-a84f-559cc56a8ff7";
  githash = "6187bb2d5fcbb2007c39e7ac53308b0d371124bd";
  path = "H/Hiccup";
  src = fetchgit { url = "https://github.com/JunoLab/Hiccup.jl.git"; sha256 = "1r05fqdcpvaibmq65smsrrd8b401q4rpmllw6vwwcf27qyv5ygpi"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "IJulia";
  uuid = "7073ff75-c697-5162-941a-fcdaad2a7d2a";
  githash = "fbbbdc4c1fcb9634e2c78468606885bf9187e5cc";
  path = "I/IJulia";
  src = fetchgit { url = "https://github.com/JuliaLang/IJulia.jl.git"; sha256 = "03bxkl5n18g6gnww7a71wascmjrfg0jlma82xmsa8wbnlf1zdp2d"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "IniFile";
  uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f";
  githash = "098e4d2c533924c921f9f9847274f2ad89e018b8";
  path = "I/IniFile";
  src = fetchgit { url = "https://github.com/JuliaIO/IniFile.jl.git"; sha256 = "0cwrzrzzp814s1k5iivinhgabvlr7a2fhrga5848gh49ky3m8913"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "InteractiveUtils";
  uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "IterTools";
  uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e";
  githash = "05110a2ab1fc5f932622ffea2a003221f4782c18";
  path = "I/IterTools";
  src = fetchgit { url = "https://github.com/JuliaCollections/IterTools.jl.git"; sha256 = "0nxp5ql0swa6a0g1w76z1f109icjqr49yq8rzi8gajppd3i5q09v"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "IteratorInterfaceExtensions";
  uuid = "82899510-4779-5014-852e-03e436cf321d";
  githash = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856";
  path = "I/IteratorInterfaceExtensions";
  src = fetchgit { url = "https://github.com/queryverse/IteratorInterfaceExtensions.jl.git"; sha256 = "1iyvcvc7ly4kc7z0z829hfdybzxr1av9hayg08jylxcy2p85z254"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "JLLWrappers";
  uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210";
  githash = "c70593677bbf2c3ccab4f7500d0f4dacfff7b75c";
  path = "J/JLLWrappers";
  src = fetchgit { url = "https://github.com/JuliaPackaging/JLLWrappers.jl.git"; sha256 = "13jj9n8mdfgnincfnjiysqixsyxnnp3f19q2mk9s1c3a8b9i0dff"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "JSExpr";
  uuid = "97c1335a-c9c5-57fe-bc5d-ec35cebe8660";
  githash = "829f37792c9a63904a95c3c579e3b5847b40802a";
  path = "J/JSExpr";
  src = fetchgit { url = "https://github.com/JuliaGizmos/JSExpr.jl.git"; sha256 = "1py4f4wizh42sg2b8k54pf25w6r4qfxrp4flrwr81z6fmwr8r8h5"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "JSON";
  uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6";
  githash = "81690084b6198a2e1da36fcfda16eeca9f9f24e4";
  path = "J/JSON";
  src = fetchgit { url = "https://github.com/JuliaIO/JSON.jl.git"; sha256 = "1h9pl3ii25f5k92gdvx0n154rnjf6fimcm33j8krpxzqw5r0l4xl"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "LAME_jll";
  uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d";
  githash = "df381151e871f41ee86cee4f5f6fd598b8a68826";
  path = "L/LAME_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/LAME_jll.jl.git"; sha256 = "0nwi8xfr86k00zfaw7x4sgx1n7bfjr02y11kv7xx4mn3kq5v36nn"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "LaTeXStrings";
  uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f";
  githash = "c7aebfecb1a60d59c0fe023a68ec947a208b1e6b";
  path = "L/LaTeXStrings";
  src = fetchgit { url = "https://github.com/stevengj/LaTeXStrings.jl.git"; sha256 = "0m1s2x1rx0icnp6z5g12az45p37jfxcfpk9n64x6hajq3b2i2fmd"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Latexify";
  uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316";
  githash = "26373ba217b1ade3daf14c73505377d614fd3b51";
  path = "L/Latexify";
  src = fetchgit { url = "https://github.com/korsbo/Latexify.jl.git"; sha256 = "0svmvsyzdrcypww3igyyalp1bcwq6pk3lb4cx5mniqi4xvcbdim6"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Lazy";
  uuid = "50d2b5c4-7a5e-59d5-8109-a42b560f39c0";
  githash = "1370f8202dac30758f3c345f9909b97f53d87d3f";
  path = "L/Lazy";
  src = fetchgit { url = "https://github.com/MikeInnes/Lazy.jl.git"; sha256 = "1bcs4369lwr138w68vsz2w33ix962mskgx8hydmy1qra038fqqbn"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "LibGit2";
  uuid = "76f85450-5226-5b5a-8eaa-529ad045b433";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "LibVPX_jll";
  uuid = "dd192d2f-8180-539f-9fb4-cc70b1dcf69a";
  githash = "85fcc80c3052be96619affa2fe2e6d2da3908e11";
  path = "L/LibVPX_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/LibVPX_jll.jl.git"; sha256 = "1kx93am24bhag0wlm51z5cqm20fvja4javxrlqjh7ii3psilwwxw"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Libdl";
  uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "LinearAlgebra";
  uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "Logging";
  uuid = "56ddb016-857b-54e1-b83d-db4d58db5568";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "MacroTools";
  uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09";
  githash = "6a8a2a625ab0dea913aba95c11370589e0239ff0";
  path = "M/MacroTools";
  src = fetchgit { url = "https://github.com/FluxML/MacroTools.jl.git"; sha256 = "0pkbdn6lc39sqq24zzxnfwbyzc6lqc9392vpgnsm33yahypcwgk4"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Markdown";
  uuid = "d6f4376e-aef5-505a-96c1-9c027394607a";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "MbedTLS";
  uuid = "739be429-bea8-5141-9913-cc70e7f3736d";
  githash = "1c38e51c3d08ef2278062ebceade0e46cefc96fe";
  path = "M/MbedTLS";
  src = fetchgit { url = "https://github.com/JuliaLang/MbedTLS.jl.git"; sha256 = "1bk9dpa62qxv3qansqchwykbz8xkl8pg8f2w88i5n8yal36xcr5j"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "MbedTLS_jll";
  uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1";
  githash = "c0b1286883cac4e2b617539de41111e0776d02e8";
  path = "M/MbedTLS_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/MbedTLS_jll.jl.git"; sha256 = "0ngabxs33ws82yn3s9wf9gf1llqcfzz8pahi3mp03i34273xk80c"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Measures";
  uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e";
  githash = "e498ddeee6f9fdb4551ce855a46f54dbd900245f";
  path = "M/Measures";
  src = fetchgit { url = "https://github.com/JuliaGraphics/Measures.jl.git"; sha256 = "0z0zryrlpipxlp9902bx7p2iw9jhqcdvjw9l30d5kjf7f8qq5ajk"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Missings";
  uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28";
  githash = "ed61674a0864832495ffe0a7e889c0da76b0f4c8";
  path = "M/Missings";
  src = fetchgit { url = "https://github.com/JuliaData/Missings.jl.git"; sha256 = "13nm7xzwv82n2hydraz7ifp1q1aykrjrmbc1j7v7zdw7mwah2fxi"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Mmap";
  uuid = "a63ad114-7e13-5084-954f-fe012c677804";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "Mustache";
  uuid = "ffc61752-8dc7-55ee-8c37-f3e9cdd09e70";
  githash = "f5d718790ff475b5b8ab9c1599ed105f0f24f253";
  path = "M/Mustache";
  src = fetchgit { url = "https://github.com/jverzani/Mustache.jl.git"; sha256 = "01f1asfqy74fpsymg1qllm713288xmyvsvbs3xdip31zj2pp5gy5"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Mux";
  uuid = "a975b10e-0019-58db-a62f-e48ff68538c9";
  githash = "8e917fbe96da22628feae3f01b4f100e709ab746";
  path = "M/Mux";
  src = fetchgit { url = "https://github.com/JuliaWeb/Mux.jl.git"; sha256 = "095dpsg2fa02s0a1jkpnvgz7mavf3k8a69m1laqfabz5bymmb8gq"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "NaNMath";
  uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3";
  githash = "c84c576296d0e2fbb3fc134d3e09086b3ea617cd";
  path = "N/NaNMath";
  src = fetchgit { url = "https://github.com/mlubin/NaNMath.jl.git"; sha256 = "0c4wvkm5z25jqqhsfashwl3ian4bnfv5ja9skh7v2zsmls3kyfrl"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Observables";
  uuid = "510215fc-4207-5dde-b226-833fc4488ee2";
  githash = "635fe10760447cfa86f5118edf2f47eb864fb495";
  path = "O/Observables";
  src = fetchgit { url = "https://github.com/JuliaGizmos/Observables.jl.git"; sha256 = "15c73zbjj0mjqixqhzqahk47ji7rxvjiq0xm4kmdphajl722c6lf"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Ogg_jll";
  uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051";
  githash = "a42c0f138b9ebe8b58eba2271c5053773bde52d0";
  path = "O/Ogg_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/Ogg_jll.jl.git"; sha256 = "1bjjzz74qqa0y8nfm92gknrx5bzmzrbsgxpfp207gam6iyinfr14"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "OpenSSL_jll";
  uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95";
  githash = "71bbbc616a1d710879f5a1021bcba65ffba6ce58";
  path = "O/OpenSSL_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/OpenSSL_jll.jl.git"; sha256 = "1wi7zcb48bvsrcf6h9f6qxyigqv14wzm26kp1mk8akcvhhwak2rz"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Opus_jll";
  uuid = "91d4177d-7536-5919-b921-800302f37372";
  githash = "f9d57f4126c39565e05a2b0264df99f497fc6f37";
  path = "O/Opus_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/Opus_jll.jl.git"; sha256 = "023x1la6f36z0wgxm9p31rdz28z6h7619va9ks7vj8zf916adls9"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "OrderedCollections";
  uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d";
  githash = "16c08bf5dba06609fe45e30860092d6fa41fde7b";
  path = "O/OrderedCollections";
  src = fetchgit { url = "https://github.com/JuliaCollections/OrderedCollections.jl.git"; sha256 = "1gldrzi8jvgilygd4mm7cmjhkblkpslb0bkar64rvl7d8pwc659s"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Parsers";
  uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0";
  githash = "6fa4202675c05ba0f8268a6ddf07606350eda3ce";
  path = "P/Parsers";
  src = fetchgit { url = "https://github.com/JuliaData/Parsers.jl.git"; sha256 = "02y987plg27pdh2llnp1nfk2rhvymcvv0f36857cw1yskzwxkarq"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Pidfile";
  uuid = "fa939f87-e72e-5be4-a000-7fc836dbe307";
  githash = "1be8660b2064893cd2dae4bd004b589278e4440d";
  path = "P/Pidfile";
  src = fetchgit { url = "https://github.com/vtjnash/Pidfile.jl.git"; sha256 = "0rqihbl0bqlp8vgy0zybf9lrpxrx7ylsxwy0a8dw21n0w7d7c7f7"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Pkg";
  uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "PlotThemes";
  uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a";
  githash = "c6f5ea535551b3b16835134697f0c65d06c94b91";
  path = "P/PlotThemes";
  src = fetchgit { url = "https://github.com/JuliaPlots/PlotThemes.jl.git"; sha256 = "1az7wndgiy3zh6pvn7z19rj6j1rapyy2cgcz4klq32yn6bv3mhpi"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "PlotUtils";
  uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043";
  githash = "4e098f88dad9a2b518b83124a116be1c49e2b2bf";
  path = "P/PlotUtils";
  src = fetchgit { url = "https://github.com/JuliaPlots/PlotUtils.jl.git"; sha256 = "12di0lfkxp89ndyfq1gbwsw7gwbzk8p716y9zk6dcrif32z5jd08"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Plotly";
  uuid = "58dd65bb-95f3-509e-9936-c39a10fdeae7";
  githash = "7634def3aea4a58d8f13687e9c72b2c1bfaa61ce";
  path = "P/Plotly";
  src = fetchgit { url = "https://github.com/plotly/Plotly.jl.git"; sha256 = "1k9di85q4pxxl8chmdww7g3wzwyqg208pxv8sjipsh1fw19dh9lk"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "PlotlyBase";
  uuid = "a03496cd-edff-5a9b-9e67-9cda94a718b5";
  githash = "b33809ab5a35bf41d1fd7c851b52e32004392933";
  path = "P/PlotlyBase";
  src = fetchgit { url = "https://github.com/sglyon/PlotlyBase.jl.git"; sha256 = "10a6j7121gc6bd6p24pxmjhklp52vznnhgabdzkac4qmzx2a5r4w"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "PlotlyJS";
  uuid = "f0f68f2c-4968-5e81-91da-67840de0976a";
  githash = "d55517585b572623b61857dadf74e6f53812c2fb";
  path = "P/PlotlyJS";
  src = fetchgit { url = "https://github.com/JuliaPlots/PlotlyJS.jl.git"; sha256 = "0m0s738hxjg9wz3b3ilp1igzfjcgqhkgh7xigfb150bhj4f4kaq9"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Plots";
  uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80";
  githash = "f4425bbd5f313b074d6ce3b86d80c0ad16bf7326";
  path = "P/Plots";
  src = fetchgit { url = "https://github.com/JuliaPlots/Plots.jl.git"; sha256 = "1fzpwd8j9qfkxrjfmzhnv5zk0kikrdg3lsk538jd2vmy1fhpnfyg"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Printf";
  uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "PyCall";
  uuid = "438e738f-606a-5dbb-bf0a-cddfbfd45ab0";
  githash = "b6dff5fa725eff4f775f472acd86756d6e31fb02";
  path = "P/PyCall";
  src = fetchgit { url = "https://github.com/JuliaPy/PyCall.jl.git"; sha256 = "0h4j5dk1vnqh14r7jpkdy0lhikfj3hwkpxwakv6pqhlffzf1jmys"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "PyPlot";
  uuid = "d330b81b-6aea-500a-939a-2ce795aea3ee";
  githash = "67dde2482fe1a72ef62ed93f8c239f947638e5a2";
  path = "P/PyPlot";
  src = fetchgit { url = "https://github.com/JuliaPy/PyPlot.jl.git"; sha256 = "1jv6c8hlsc1fyshh0szsb8f5wsl9glnvb6rwrvl0ybhis5cnnqxf"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "REPL";
  uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "Random";
  uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "RecipesBase";
  uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01";
  githash = "6ee6c35fe69e79e17c455a386c1ccdc66d9f7da4";
  path = "R/RecipesBase";
  src = fetchgit { url = "https://github.com/JuliaPlots/RecipesBase.jl.git"; sha256 = "1nqjm0l5xgmd09qwvf0g65d6f93f727rvw0inyi3vv332mg5scia"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "RecipesPipeline";
  uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c";
  githash = "4a325c9bcc2d8e62a8f975b9666d0251d53b63b9";
  path = "R/RecipesPipeline";
  src = fetchgit { url = "https://github.com/JuliaPlots/RecipesPipeline.jl.git"; sha256 = "0k8k9qy5zr6jki31s6h8l99i3scx31873adf2v57ql9i1fzy9skm"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Reexport";
  uuid = "189a3867-3050-52da-a836-e630ba90ab69";
  githash = "7b1d07f411bc8ddb7977ec7f377b97b158514fe0";
  path = "R/Reexport";
  src = fetchgit { url = "https://github.com/simonster/Reexport.jl.git"; sha256 = "170cbrvgcr306i8clsqcvxlzga8qplnaffcn1bv953i29z33pk05"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Requires";
  uuid = "ae029012-a4dd-5104-9daa-d747884805df";
  githash = "28faf1c963ca1dc3ec87f166d92982e3c4a1f66d";
  path = "R/Requires";
  src = fetchgit { url = "https://github.com/JuliaPackaging/Requires.jl.git"; sha256 = "0vayspf9gqy6d4016jqbrjv6csna3kls66lrfy7ack592nnrrqs9"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "SHA";
  uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce";
  githash = "null";
  path = "S/SHA";
  src = fetchgit { url = "https://github.com/staticfloat/SHA.jl.git"; sha256 = "0pjjiqj5xgak689jdcq9l61ykkfm176m8rl6pjx40wsmmdn89p7f"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Serialization";
  uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "SharedArrays";
  uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "Showoff";
  uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f";
  githash = "ee010d8f103468309b8afac4abb9be2e18ff1182";
  path = "S/Showoff";
  src = fetchgit { url = "https://github.com/JuliaGraphics/Showoff.jl.git"; sha256 = "14074m29rvrqhwnc780157rqlbp6gwcrxybrljpdxqpb12mx7a9f"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Sockets";
  uuid = "6462fe0b-24de-5631-8697-dd941f90decc";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "SoftGlobalScope";
  uuid = "b85f4697-e234-5449-a836-ec8e2f98b302";
  githash = "986ec2b6162ccb95de5892ed17832f95badf770c";
  path = "S/SoftGlobalScope";
  src = fetchgit { url = "https://github.com/stevengj/SoftGlobalScope.jl.git"; sha256 = "1r1iykbahzf2znm1d06015hf8r4fp18ka7d7lij8dl2wg99aa17g"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "SortingAlgorithms";
  uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c";
  githash = "03f5898c9959f8115e30bc7226ada7d0df554ddd";
  path = "S/SortingAlgorithms";
  src = fetchgit { url = "https://github.com/JuliaCollections/SortingAlgorithms.jl.git"; sha256 = "1iwglqrl4pm6pwh3jr2qgl48fkz0mh7045272r614lbllr8gi68i"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "SparseArrays";
  uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "StaticArrays";
  uuid = "90137ffa-7385-5640-81b9-e52037218182";
  githash = "016d1e1a00fabc556473b07161da3d39726ded35";
  path = "S/StaticArrays";
  src = fetchgit { url = "https://github.com/JuliaArrays/StaticArrays.jl.git"; sha256 = "0zds3vd8jm841w7f8z639gn9p78fdfzjwyqrshwk69cjlh9zh88f"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Statistics";
  uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "StatsBase";
  uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91";
  githash = "7bab7d4eb46b225b35179632852b595a3162cb61";
  path = "S/StatsBase";
  src = fetchgit { url = "https://github.com/JuliaStats/StatsBase.jl.git"; sha256 = "0qzdbvj2qz4xls95wrcznyvwwyiv6wgw011ww1br3bhkf97g988v"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "StructArrays";
  uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a";
  githash = "8099ed9fb90b6e754d6ba8c6ed8670f010eadca0";
  path = "S/StructArrays";
  src = fetchgit { url = "https://github.com/JuliaArrays/StructArrays.jl.git"; sha256 = "0fshmi23s0k3wn5p81hq5pcgvgv2rygl5p5z5jhalzwb697glkpv"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "TableTraits";
  uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c";
  githash = "b1ad568ba658d8cbb3b892ed5380a6f3e781a81e";
  path = "T/TableTraits";
  src = fetchgit { url = "https://github.com/queryverse/TableTraits.jl.git"; sha256 = "1l2yfwnhj4zqbfps2j542v10c9pjbi7a8w3av7j7m27gxnmi4cn8"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Tables";
  uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c";
  githash = "24a584cf65e2cfabdadc21694fb69d2e74c82b44";
  path = "T/Tables";
  src = fetchgit { url = "https://github.com/JuliaData/Tables.jl.git"; sha256 = "0hsaialw9vm6z6ysvinv9p8is5wkbxxhcknlh5syyc9nrm6gblxy"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Test";
  uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "URIParser";
  uuid = "30578b45-9adc-5946-b283-645ec420af67";
  githash = "53a9f49546b8d2dd2e688d216421d050c9a31d0d";
  path = "U/URIParser";
  src = fetchgit { url = "https://github.com/JuliaWeb/URIParser.jl.git"; sha256 = "0fdgf7mjfj0xqdg81b7jf8cqaydanvgmsk885pq9s9ikd1cwfd3l"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "UUIDs";
  uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "Unicode";
  uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5";
  githash = "null";
  path = "null";
  src = null;
} {
  name = "VersionParsing";
  uuid = "81def892-9a0e-5fdd-b105-ffc91e053289";
  githash = "80229be1f670524750d905f8fc8148e5a8c4537f";
  path = "V/VersionParsing";
  src = fetchgit { url = "https://github.com/JuliaInterop/VersionParsing.jl.git"; sha256 = "0g24p3saxfm8ij1z0py03b9j2piz4na9aabf83c68qxqzdjqq9y8"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "WebIO";
  uuid = "0f1e0344-ec1d-5b48-a673-e5cf874b6c29";
  githash = "adc25e225bc334c7df6eec3b39496edfc451cc38";
  path = "W/WebIO";
  src = fetchgit { url = "https://github.com/JuliaGizmos/WebIO.jl.git"; sha256 = "1ymyp10kxw59gfla8q7hn4q3bc52i21wva0dbihjz8a5xx59lap8"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "WebSockets";
  uuid = "104b5d7c-a370-577a-8038-80a2059c5097";
  githash = "13f763d38c7a05688938808b49cb29b18b60c8c8";
  path = "W/WebSockets";
  src = fetchgit { url = "https://github.com/JuliaWeb/WebSockets.jl.git"; sha256 = "1xys8cjijmwz3c5bc1vv52s2szmif8lx8dcf4cs25hbnckvswkaj"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Widgets";
  uuid = "cc8bc4a8-27d6-5769-a93b-9d913e69aa62";
  githash = "fc0feda91b3fef7fe6948ee09bb628f882b49ca4";
  path = "W/Widgets";
  src = fetchgit { url = "https://github.com/piever/Widgets.jl.git"; sha256 = "1k81cigb2bjklrdia2dmxznxr8hvfc0bn09lpc8f0hnih7gxad9v"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "ZMQ";
  uuid = "c2297ded-f4af-51ae-bb23-16f91089e4e1";
  githash = "fc68e8a3719166950a0f3e390a14c7302c48f8de";
  path = "Z/ZMQ";
  src = fetchgit { url = "https://github.com/JuliaInterop/ZMQ.jl.git"; sha256 = "154zqwyr91063i709fzrr4w4qy6b1yfghy4a8dklhkk0sfjsphxr"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "ZeroMQ_jll";
  uuid = "8f1865be-045e-5c20-9c9f-bfbfb0764568";
  githash = "bba617292e040408cb72baa03c20f43583bf239f";
  path = "Z/ZeroMQ_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/ZeroMQ_jll.jl.git"; sha256 = "0k8as7rph5d3dz9gfmqw7dlpd64fqzz5bs8jvck4mfrrrcl7p6bw"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "Zlib_jll";
  uuid = "83775a58-1f1d-513f-b197-d71354ab007a";
  githash = "320228915c8debb12cb434c59057290f0834dbf6";
  path = "Z/Zlib_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/Zlib_jll.jl.git"; sha256 = "0l5l4ppbzai08ddr2i8jx61vgwlaxpr8p1pfakqp3ca7q7m8mhzf"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "libass_jll";
  uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0";
  githash = "acc685bcf777b2202a904cdcb49ad34c2fa1880c";
  path = "L/libass_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/libass_jll.jl.git"; sha256 = "0haivpnlik5k0z6zj8s0xjpmcc0dyss432f7fcl3c5qjcx9qglyj"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "libfdk_aac_jll";
  uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280";
  githash = "7a5780a0d9c6864184b3a2eeeb833a0c871f00ab";
  path = "L/libfdk_aac_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/libfdk_aac_jll.jl.git"; sha256 = "0haxgn3zf0lxbvmlzi419ndcqvgzjwq99vmpqcpa7plw3ll89rgj"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "libvorbis_jll";
  uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a";
  githash = "fa14ac25af7a4b8a7f61b287a124df7aab601bcd";
  path = "L/libvorbis_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/libvorbis_jll.jl.git"; sha256 = "136w1ri50jqi6w2z30npzq85dy4bsldi4mq777pjlvqjwjdp5b2k"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "x264_jll";
  uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a";
  githash = "d713c1ce4deac133e3334ee12f4adff07f81778f";
  path = "X/x264_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/x264_jll.jl.git"; sha256 = "18dlwkiq3pc8h8k9dv2iyclf958kyc2f60srzls0z0m3jim38gxn"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
} {
  name = "x265_jll";
  uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76";
  githash = "487da2f8f2f0c8ee0e83f39d13037d6bbf0a45ab";
  path = "X/x265_jll";
  src = fetchgit { url = "https://github.com/JuliaBinaryWrappers/x265_jll.jl.git"; sha256 = "094b5lhd787hs4dgi0rpkd384dnvdxviz86x4ysv2s466bjdlvxj"; deepClone = true; leaveDotGit = true; fetchSubmodules = true; };
}]
