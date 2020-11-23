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

runCommand "julia-depot" {
  buildInputs = [git curl julia];
  inherit registry;
} ''
  export HOME=$(pwd)

  echo "Using registry $registry"

  cp ${/home/tom/juliaenv2/Manifest.toml} ./Manifest.toml
  cp ${/home/tom/juliaenv2/Project.toml} ./Project.toml

  ls -lh

  julia -e ' \
    using Pkg;
    Pkg.Registry.add(RegistrySpec(path="${registry}"));

    # Pkg.add("IJulia")
    Pkg.activate(".")
    Pkg.instantiate()
  '

  cp -r .julia $out
''
