{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "052becebb7f984c565791d68a0f6bdede6e0860e";
    hash = "sha256-dOjS+27Gsdaip7x+DHyJxfXBSaelYL9W1b42S/gIy54=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
