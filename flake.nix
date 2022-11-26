{
  description = "julia2nix";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-22.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
        {
          packages = {
            default = with pkgs; runCommand "julia2nix" { buildInputs = [makeWrapper]; } ''
              makeWrapper ${./julia2nix} $out/bin/julia2nix \
               --set PATH ${lib.makeBinPath [nix python3]}
            '';
          };
        });
}
