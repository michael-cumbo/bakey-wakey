{pkgs ? import <nixpkgs> {}}:
with pkgs;
  mkShell {
    buildInputs = [
      tree
      git
      fastfetch
      gradle
      fish
      duckdb
      fzf
    ];
  }
