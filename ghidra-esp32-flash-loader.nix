{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "cbc6b9ac95cbd8e788fd2e275fdb0a7480e4daf9";
    hash = "sha256-RFxSV7HzVKXj7DGdba5RxnyIEps3t7WwLyziYeD9PdE=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
