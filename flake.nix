{
  description = "a basic flake for data analysis";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    flake-parts,
    nvf,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];
      perSystem = {pkgs, ...}: {
        devShells.default = import ./modules/shell.nix {inherit pkgs;};

        packages.default =
          (nvf.lib.neovimConfiguration {
            inherit pkgs;
            modules = [./modules/nvf.nix];
          }).neovim;
      };
    };
}
