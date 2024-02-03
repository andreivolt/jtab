{ pkgs ? import <nixpkgs> {} }:

pkgs.rustPlatform.buildRustPackage rec {
  name = "jtab";
  version = "0.7.1";

  src = ./.;

  cargoHash = "sha256-E91Bx54y6htV8Y65bsd/MKTmvJqHlUAdGKwcG19LODQ=";

  meta = with pkgs.lib; {
    description = "Print JSON data as a table from the command line";
    homepage = "https://github.com/wlezzar/jtab";
    license = licenses.mit;
  };
}
