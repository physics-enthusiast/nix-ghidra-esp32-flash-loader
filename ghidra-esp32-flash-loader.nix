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
    hash = "sha256-nHKEMzDOr0sTe/c1bn0ME8YbH/QIQfEV5JOllFsb5Cs=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
