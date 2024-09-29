{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "b3c1396ba1b9ba9d629b0f7dd743badae817103b";
    hash = "sha256-si0X6s3LiFofIKCudPlUu1ZhOo4dlk+KX40YgBPyi0g=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
