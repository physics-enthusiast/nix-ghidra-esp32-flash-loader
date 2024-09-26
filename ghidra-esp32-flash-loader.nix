{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "c59639022dcd051977f80cc2beb3c557972a9af8";
    hash = "sha256-eZCqnuk7xgubnpMNrighjRBzUR5Mm35L0XEedfMfwO8=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
