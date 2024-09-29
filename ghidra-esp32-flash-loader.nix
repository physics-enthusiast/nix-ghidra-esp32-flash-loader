{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "6e12acc5e5a399cd65202709046bb1517f53f606";
    hash = "sha256-si0X6s3LiFofIKCudPlUu1ZhOo4dlk+KX40YgBPyi0g=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
