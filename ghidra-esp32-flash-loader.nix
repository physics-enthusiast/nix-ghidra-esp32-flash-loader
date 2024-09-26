{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "d18f275e430b1f3cf0b09f8d041fa9ff72c07a7e";
    hash = "sha256-o+itU18jpmFiYV4FOeIHFgKEw07QNDxiEq8GQqBZZAY=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
