{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "c03faa4173aa82ee96fc8b7888b629583e31690d";
    hash = "sha256-FnGy0vPc5Ji+8SC0GnJ5yiGaVbtw3TScCmWJNu/NBQQ=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
