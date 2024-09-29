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
    hash = "sha256-4CwpGF7MpGhDhxP8czXP/+sStNraRxrkyWOjRB2Ew4E=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
