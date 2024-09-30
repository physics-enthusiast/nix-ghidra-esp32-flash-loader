{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "45bc4d8730026d9910f12e0ea364fe71e47c840e";
    hash = "sha256-J986JevYwd2TjauXlH9k4sSsTIyNWGmbPZINSUzIADE=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
