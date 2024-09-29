{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "0ee223d8da9b0e2202bee7c5d5e57ebda5416464";
    hash = "sha256-O4dH24cmY2B/EclMA6WtltDVa5q7Vtl/K10LGdKUno0=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
