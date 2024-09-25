{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "3acb44a901c043ec9eafea8c2b0090f1059fa81d";
    hash = "sha256-7eWOcwzCzDg5Kv10hytgxAILo7VZqlWpYQbMFTg46cY=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
