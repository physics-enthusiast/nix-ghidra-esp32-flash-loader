{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "2179dc168bcf040bcd367f44bf3d51dfac9da6eb";
    hash = "sha256-/fzz/pgV/PpDx9g+XP8+P+sZyltne4TPS7UHBNLzz4Y=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
