{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "71da572b2a5e3a772fb59a67ed2b52a3208c47cf";
    hash = "sha256-ViMLrGV+AG1fb0nv95O3AkncsQver1rguhFTpbMdhdw=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
