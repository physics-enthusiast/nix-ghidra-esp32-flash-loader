{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "5325883ec0e6d7ec1e7dd5b069943dee58d30f0b";
    hash = "sha256-eaCqnuk7xgubnpMNrighjRBzUR5Mm35L0XEedfMfwO8=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
