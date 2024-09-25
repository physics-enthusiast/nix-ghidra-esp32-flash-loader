{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "68bf5e0107b27c2d99a42ebece877a134f98396c";
    hash = "sha256-lRLZu604LxPRUGIevZUDrYQQV46oXwtfeAZcgBJjbjQ=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
