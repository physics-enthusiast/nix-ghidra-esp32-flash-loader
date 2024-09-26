{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "a253a53adc6a4ec78bcf0f589810cdb4e88b6fb3";
    hash = "sha256-huPK5w7+CEVCh+zirQc9pZEo++RrqcrjFhirUEgRRwM=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
