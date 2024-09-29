{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "1c5767f2f34653b0b563e783bd906caba097dab8";
    hash = "sha256-1Cbkobfn+QMSNfSdakNO3cRT5jveswJsh9OperCb51M=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
