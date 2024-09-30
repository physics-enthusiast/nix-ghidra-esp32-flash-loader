{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "30127b048f7aaa4177bf9359aba670714690e303";
    hash = "sha256-beA4O01hQoqjS4aCyyGcvNvyVs/1aaQGjdzxrNsetv0=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
