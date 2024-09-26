{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "7ecac303304beac86b40dc1b97751ce706de3ac9";
    hash = "sha256-aTL4IqV0CKdsIHSEaT2D+yAKIOkB9VWcZtLQgCSqfhM=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
