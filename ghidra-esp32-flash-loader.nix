{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "6e12acc5e5a399cd65202709046bb1517f53f606";
    hash = "sha256-1Cbkobfn+QMSNfSdaaNO3cRT5jveswJsh9OperCb51M=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
