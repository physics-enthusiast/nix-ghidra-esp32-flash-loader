{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "b138a691f0a8c9677651849fa5b07e9916c312c8";
    hash = "sha256-3NkXpH3QnG6slYT5veDAAafJ8g6auwkTlb0doggdz6U=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
