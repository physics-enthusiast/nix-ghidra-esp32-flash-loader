{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "072017eaf9c1c46d47d7b1ffeb33dfd1851ca58e";
    hash = "sha256-BLE7Bdfd5KcQcFYI7Z7KbMMLFXLYUQzQ9YUyQ6Xtf98=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
