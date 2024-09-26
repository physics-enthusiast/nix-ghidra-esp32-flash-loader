{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "d18f275e430b1f3cf0b09f8d041fa9ff72c07a7e";
    hash = "sha256-x7b2t+z9c7Dg4OZmscaa15QtB+M7DpOYcn4SEmR70bI=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
