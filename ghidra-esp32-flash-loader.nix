{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "3f9f3a0d08acee72f7a3dbeb7deb700b3b18d7cd";
    hash = "sha256-CgHqhF+78anLCLf01TMDf8NhpQ74/HFW9IP8asgTCOw=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
