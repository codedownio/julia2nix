{
  description = "julia2nix";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/master";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
        {
          packages = {
            default = with pkgs; runCommand "julia2nix" { buildInputs = [makeWrapper]; } ''
              mkdir -p $out/bin

              cp ${./julia2nix} $out/bin/julia2nix
              cp ${./gather_packages.py} $out/bin/gather_packages.py
              cp ${./extract_artifacts.jl} $out/bin/extract_artifacts.jl
              cp ${./nix_util.py} $out/bin/nix_util.py
              cp -r ${./templates} $out/bin/templates

              wrapProgram $out/bin/julia2nix \
               --set PATH ${lib.makeBinPath [nix python3 julia-stable-bin]} \
               --set NIX_PATH nixpkgs=${pkgs.path}
            '';

            nixpkgsPath = pkgs.writeShellScriptBin "nixpkgsPath.sh" "echo -n ${pkgs.path}";
          };
        });
}
