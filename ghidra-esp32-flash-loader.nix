{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "1ff4ae9b3333b6df08f49b0962113a6feca0375f";
    hash = "sha256-8j9MbvcsRuoOx0XE1IftJOKNne5ktJp0tz99Oz0tuug=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
