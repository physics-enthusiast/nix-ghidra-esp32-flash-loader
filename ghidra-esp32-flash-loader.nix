{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "ee6c773e72273c048a213e0f81fad42a3e5107bf";
    hash = "sha256-8LN/gVXEL2aNxTguGHcXks/7teGi8yPImDI9KmpaSKQ=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
