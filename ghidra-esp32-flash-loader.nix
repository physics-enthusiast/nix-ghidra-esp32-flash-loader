{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "3acb44a901c043ec9eafea8c2b0090f1059fa81d";
    hash = "sha256-2DbiAeS5gZv5pNxKayFg5tgKW4TKNxhhyCjAkJ+l00w=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
