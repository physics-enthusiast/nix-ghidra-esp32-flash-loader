{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "146153235fd22d8aeaeb12f1da1a1d0d212faf41";
    hash = "sha256-ViMLrGV+AG1fb0nv95O3AkncsQver1rguhFTpbMdhdw=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
