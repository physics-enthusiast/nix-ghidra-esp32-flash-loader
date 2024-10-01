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
    hash = "sha256-XXIn1mXmvoc4uSIH80Hk851Wp/zjrQSvUW9603jYmMA=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
