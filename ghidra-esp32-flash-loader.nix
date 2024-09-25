{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "3fb9cf4d7e9bb16266d0b53d6c6237fc67f04dc0";
    hash = "sha256-lRLZu604LxPRUGIevZUDrYQQV46oXwtfeAZcgBJjbjQ=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
