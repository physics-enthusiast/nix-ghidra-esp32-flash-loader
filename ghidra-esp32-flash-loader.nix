{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "7534c51306fe0275b8674959039ac1fe49c060a1";
    hash = "sha256-5svSr/GMSbABiEuxogmn34Id7oGej6phNrM8ucFvsHs=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
