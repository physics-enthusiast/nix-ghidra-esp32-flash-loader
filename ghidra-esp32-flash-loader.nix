{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "95507ac397278b47f83e8a2b3ddb757f58b77193";
    hash = "sha256-L6fUGrIRghQJldd/POfVbMpcGeZox/lcmgz1gtZBbrg=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
