{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "67723c51daa3bad6b47b7f5a8cd057d2fbce0286";
    hash = "sha256-aTL4IqV0CKdsIHSEaTaD+yAKIOkB9VWcZtLQgCSqfhM=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
