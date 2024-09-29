{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "85bc156e959786aac186f86f957a468cbaa00b9c";
    hash = "sha256-fNl+NG/dIEdK3qAoiEV7mjwdjNf+pDZe9xtUnfofn0c=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
