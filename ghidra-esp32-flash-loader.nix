{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "146153235fd22d8aeaeb12f1da1a1d0d212faf41";
    hash = "sha256-BrS3IQfBbOWPUE87gKKaHUXzOQmcTpyyJJn7rdKhX6g=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
