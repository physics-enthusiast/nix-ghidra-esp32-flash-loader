{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "dynacylabs";
    repo = "ghidra-esp32-flash-loader";
    rev = "v${version}";
    hash = "sha256-Tz9bnE6xt9+EHV+7367oqL2NIe9ozdmATa3HMyivTxE=";
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
