{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "f8ed7ffcf0c43671819702530ffd42e6c7e532ca";
    hash = "sha256-dUoIpcgqV9KjQw4Y263rvh8OWJVa7asEob2z7+V2ZKE=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
