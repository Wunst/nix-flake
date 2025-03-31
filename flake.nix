{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }: {
    nixosConfigurations = let
      mkSystem = system: hostName: nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          home-manager.nixosModules.home-manager
          ./overlays
          ./modules/nixos
          ./systems/${hostName}
          ./allow-unfree.nix
        ];
      };
    in {
      wunstpc = mkSystem "x86_64-linux" "wunstpc";
      wunstlp = mkSystem "x86_64-linux" "wunstlp";
    };
  };
}

