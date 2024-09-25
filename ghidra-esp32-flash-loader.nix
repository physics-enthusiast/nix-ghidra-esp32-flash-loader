{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "eb6852d588ea0086aa10b0534153cd727177013c";
    hash = "sha256-sOBjSAJDRV1KdMK1gLPvnwlsHsGiY3QsXAwYoUYINFo=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
