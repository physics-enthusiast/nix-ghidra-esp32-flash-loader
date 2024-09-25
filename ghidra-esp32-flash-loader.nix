{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "1ef19f1641e7aecfdf41089515e4edcc1e1d1143";
    hash = "sha256-7IuUUMSYzbHNN5L3UWOsBsPYv/tUtWMFoKPA1d+GGSg=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
