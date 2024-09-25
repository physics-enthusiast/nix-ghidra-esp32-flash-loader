{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "cf6e01ea83a8e5c9636c07ccca4e0384f4e737a1";
    hash = "sha256-7IuUUMSYzbHNN5L3UWOsBsPYv/tUtWMFoKPA1d+GGSg=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
