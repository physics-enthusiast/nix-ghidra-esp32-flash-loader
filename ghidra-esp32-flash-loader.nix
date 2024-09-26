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
    hash = "sha256-x7b2t+z9c7Dg4OZmscXK15QtB+M7DpOYcn4SEmR70bI=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
