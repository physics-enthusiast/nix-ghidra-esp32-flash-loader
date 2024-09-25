{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "7c1bb3c41161da6fff35e32810d2720bedfec3d2";
    hash = "sha256-5svSr/GMSbABiEuxogmn34Id7oGej6phNrM8ucFvsHs=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
