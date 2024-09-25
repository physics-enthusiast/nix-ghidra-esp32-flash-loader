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
    hash = "sha256-grq1U4P8pLKZZ1kps27JuWCYxrKA7KyBetVRuNpDe4s=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
