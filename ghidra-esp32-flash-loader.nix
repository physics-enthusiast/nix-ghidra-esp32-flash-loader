{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "be309d97bfd318da33ac6eab094c88f90b264820";
    hash = "sha256-AyXfkPIxPwZ77suXZ9X+vfCdmlzqYfbNnJOgaX+lPgI=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
