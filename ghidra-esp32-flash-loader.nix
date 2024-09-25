{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "7ba63a4f38af56a5f047b2a5e120d2ac2447e797";
    hash = "sha256-grq1U4P8pLKZZ1kps27JuWCYxrKA7KyBetVRuNpDe4s=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
