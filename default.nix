with import <nixpkgs> {};

with pkgs;


let
  baseJulia = julia_11;

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

  julia = runCommand "julia-wrapped" { buildInputs = [makeWrapper]; } ''
    mkdir -p $out/bin
    makeWrapper ${baseJulia}/bin/julia $out/bin/julia \
                --suffix LD_LIBRARY_PATH : "${lib.makeLibraryPath extraLibs}"
  '';

in

callPackage ./common.nix { inherit git curl julia; }
