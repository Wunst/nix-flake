{
  description = "Ben's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... }@inputs: let
    system = "x86_64-linux";
    settings = import ./settings.nix;
    mkSystem = hostName: nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [ 
        inputs.home-manager.nixosModules.home-manager
        ./system 
      ];
      specialArgs = {
        inherit settings hostName;
      };
    };
  in {
    nixosConfigurations = {
      wunstlp = mkSystem "wunstlp";
    };
  };
}

