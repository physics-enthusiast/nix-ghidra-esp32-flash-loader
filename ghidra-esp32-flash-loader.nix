{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "cfab9b9585f86037324b5d3ba67e2a5c753e853e";
    hash = "sha256-zQgxhfBGe9UZIz997XdXmG//VBPl2mH/wrr7s9nRESY=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
