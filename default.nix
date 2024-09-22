{ pkgs ? import <nixpkgs> {} }: rec {
  ghidra-esp32-flash-loader = pkgs.callPackage ./ghidra-esp32-flash-loader.nix { inherit (pkgs.ghidra) buildGhidraExtension; };
}
