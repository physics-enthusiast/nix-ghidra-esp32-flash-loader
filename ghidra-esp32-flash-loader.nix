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
    hash = "sha256-cNgAU91o+l+9ZW4PaZqURZ0CSwVIQDzNIvL2P6o8vmM=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
