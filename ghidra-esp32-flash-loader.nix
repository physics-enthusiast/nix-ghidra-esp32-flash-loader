{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "2867c09a21164f04dc2668728a33d149dce779b7";
    hash = "sha256-/eOY8H4k/vk+vUYXRNsO33CM3RW8BnQaVo4am8MGZlI=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
