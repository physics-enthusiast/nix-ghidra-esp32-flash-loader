{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "9167d61ace14937a84159bed3a014d78432b47fc";
    hash = "sha256-BMg1KcW1bDFfD28Cai1TV5dLDAp0Fxj+QF2yJEpKogo=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
