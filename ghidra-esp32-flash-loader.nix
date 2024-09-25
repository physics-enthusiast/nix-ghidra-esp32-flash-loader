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
    hash = "sha256-qwNm5w9L9XUOPMvMGQl90IpNub4HC++qkN2+p5o4wZU=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
