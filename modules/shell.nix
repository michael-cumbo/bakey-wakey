{pkgs ? import <nixpkgs> {}}:
with pkgs;
  mkShell {
    buildInputs = [
      tree
      nixpkgs-fmt
      ncurses
      zellij
      google-cloud-sdk
      yazi
      ripgrep
      git
      fastfetch
      gradle
      fish
      duckdb
      fzf
    ];
  }
