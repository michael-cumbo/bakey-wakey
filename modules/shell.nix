{pkgs ? import <nixpkgs> {}}:
with pkgs;
  mkShell {
    buildInputs = [
      tree
      starship
      sqlfluff
      nixpkgs-fmt
      ncurses
      zellij
      google-cloud-sdk
      yazi
      ripgrep
      git
      lazygit
      fastfetch
      gradle
      fish
      duckdb
      fzf
    ];
  }
