{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "2d56d94fb6e6bae4cfcb7d2f26a5e9ce43a85067";
    hash = "sha256-BMg1KcW1bDFfD28Cai1TV5dLDAp0Fxj+QF2yJEpKogo=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
