{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "7a94344b35cc40058eda11737b7d04ecb37dc534";
    hash = "sha256-fSgZReRzVAUEn2WsmK18EVZmUXvb2aEaenLsAsu+2vQ=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
