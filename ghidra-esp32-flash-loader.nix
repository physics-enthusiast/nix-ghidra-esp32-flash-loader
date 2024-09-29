{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "072017eaf9c1c46d47d7b1ffeb33dfd1851ca58e";
    hash = "sha256-fSgZReRzaAUEn2WsmK18EVZmUXvb2aEaenLsAsu+2vQ=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
