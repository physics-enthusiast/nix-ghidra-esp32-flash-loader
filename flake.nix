{
  description = "Ghidra Loader for ESP32 Flash Dumps";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs }:
    let
      forEachSystem = nixpkgs.lib.genAttrs [ "aarch64-linux" "x86_64-linux" ];
    in
    {
      apps = forEachSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        ghidra-esp32-flash-loader = pkgs.callPackage ./ghidra-esp32-flash-loader.nix { inherit (pkgs.ghidra) buildGhidraExtension; };
        ghidra = pkgs.ghidra.withExtensions (p: with p; [
          ghidra-esp32-flash-loader
        ]);
      in
      {
        default = self.apps.${system}.ghidra;

        ghidra = {
          type = "app";
          program = "${ghidra}/bin/ghidra";
        };
      });
    };
