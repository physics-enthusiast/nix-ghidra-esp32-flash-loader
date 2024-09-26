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
    hash = "sha256-CInIJfo5G9pDKc5C4WPGjbkg5ZQjyH5X2lbdaOfix8g=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
