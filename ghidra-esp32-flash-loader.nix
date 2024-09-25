{ buildGhidraExtension
, fetchFromGitHub
}:
let
  version = "1.0";
  src = fetchFromGitHub {
    owner = "physics-enthusiast";
    repo = "ghidra-esp32-flash-loader";
    #rev = "v${version}";
    rev = "2a597c7d41e762754790e8d052d1f796a246f031";
    hash = "sha256-5N1E3e9xS9v8+X+oD5ZvCjUMqekzHI+gQaa94Xmu+Xk=";
    fetchSubmodules = true;
  };
in
buildGhidraExtension {
  pname = "ghidra-esp32-flash-loader";
  inherit version src;
}
