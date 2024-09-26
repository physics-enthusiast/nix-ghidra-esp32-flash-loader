{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "59a4d5334332ed3f233c205eb442310addf1b33e";
    hash = "sha256-huPK5w7+CEVCh+zirQc9pZEo++RrqcrjFhirUEgRRwM=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
