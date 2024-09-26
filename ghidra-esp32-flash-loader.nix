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
    hash = "sha256-hRTGCQz9Sk6ai2CXMXAVREqKmmG+CpZB+5E14x4ZPdc=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
