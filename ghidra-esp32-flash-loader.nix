{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "8f4caed6f162f456a258df215bc093dd60f5c8b1";
    hash = "sha256-Tz9bnE6xt9+EHV+7367oqL2NIe9ozdmATa3HMyivTxE=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
