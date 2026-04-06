{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux"; # or "aarch64-darwin" for M1/M2 Macs
    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = [
        pkgs.bun
        pkgs.biome
      ];
      shellHook = ''
        export BUN_INSTALL="$HOME/.local/share/bun"
        export PATH="$BUN_INSTALL/bin:$PATH"
        export BUN_INSTALL_CACHE_DIR="$HOME/.cache/bun"
      '';
    };
  };
}
