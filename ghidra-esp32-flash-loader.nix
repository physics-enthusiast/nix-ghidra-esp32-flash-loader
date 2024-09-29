{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "ce9741224f39adc43b48b5375cb45ce4c7bb80ec";
    hash = "sha256-O4dH24cmY2B/EclMA6WtltDVa5q7Vtl/K10LGdKUno0=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
