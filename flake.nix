{
  description = "Go project for MIT 6.5840 ";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    # with flake-utils.lib; eachSystem allSystems (system:
    with flake-utils.lib; eachSystem ["x86_64-linux" "aarch64-darwin"] (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShellNoCC {
          name = "golango-shell";
          buildInputs = [
            pkgs.go
            pkgs.gopls
          ];
        };
      });
}
