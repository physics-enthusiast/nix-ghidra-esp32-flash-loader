{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "103fcf0362091e8eae7203cd3d4235776c88c726";
    hash = "sha256-6ZFVZYdPt6WwcGIIyfON/hBkKCvFg5wULNRSrnChirM=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
