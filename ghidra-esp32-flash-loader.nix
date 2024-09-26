{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "a2f7ed99d91788c0616a40795ac6a415d6334fb3";
    hash = "sha256-y2stSS+QeCnq0yodk66jIch0PlBGEoQ4KMHfTem3F90=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
