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
    hash = "sha256-qva3dEC3pHNblfZi6E1MJYJUenIZ81Srv+Y39FnaTHU=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
