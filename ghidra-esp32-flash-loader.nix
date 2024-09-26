{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "2d56d94fb6e6bae4cfcb7d2f26a5e9ce43a85067";
    hash = "sha256-Gtj8ND0GWwIHLgHIL1H6arHjpA8z2TKLb0Z3EZu3j18=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
