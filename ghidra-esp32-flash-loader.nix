{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "11c86a76bb04b08e6cd6971688e094684cd097a7";
    hash = "sha256-XXIn1mXmvoc4uSIH80Hk851Wp/zjrQSvUW9603jYmMA=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
