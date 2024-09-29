{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "5c0485d8d55aa7542f7063fab9f1f7482d4e9ce9";
    hash = "sha256-3NkXpH3QnG6slYT5veDAAafJ8g6auwkTlb0doagdz6U=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
