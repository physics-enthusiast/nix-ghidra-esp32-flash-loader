{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "99412c2405e4f50c90762650edef65060f923a77";
    hash = "sha256-hRTGCQz9Sk6ai2CXMXAVREqKmmG+CpZB+5E14x4ZPdc=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
