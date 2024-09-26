{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "57ca36819731a8a2fe038e039307c876fc51fa6d";
    hash = "sha256-6ZFVZYdPt6WwcGIIyfON/hBkKCvFg5wULNRSrnChirM=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
