with import <nixpkgs> {};

with pkgs;


let
  registry = import ./julia-registry.nix;

  extraLibs = [
    # IJulia.jl
    mbedtls zeromq3
    # ImageMagick.jl
    imagemagickBig
    # HDF5.jl
    hdf5
    # Cairo.jl
    cairo gettext pango.out glib.out
    # Gtk.jl
    gtk3 gdk_pixbuf
    # GZip.jl # Required by DataFrames.jl
    gzip zlib
    # GR.jl # Runs even without Xrender and Xext, but cannot save files, so those are required
    xorg.libXt xorg.libX11 xorg.libXrender xorg.libXext glfw freetype
  ];

  baseJulia = julia_11;

  julia = runCommand "julia-wrapped" { buildInputs = [makeWrapper]; } ''
    mkdir -p $out/bin
    makeWrapper ${baseJulia}/bin/julia $out/bin/julia \
                --suffix LD_LIBRARY_PATH : "${lib.makeLibraryPath extraLibs}"
  '';

in

runCommand "julia-depot" { buildInputs = [git curl julia]; } ''
  export HOME=$(pwd)

  echo "Using registry ${registry}"

  # This is dumb, but Julia's libgit2 clone fails if we just pass it the path to ${registry},
  # apparently because all the write bits are off.
  # So, clone it locally, which will set the write bits on, and pass the local path.
  git clone ${registry} ./registry

  julia -e ' \
    using Pkg;
    Pkg.Registry.add(RegistrySpec(path="./registry"));

    Pkg.add("IJulia")
  '

  cp -r .julia $out
''
