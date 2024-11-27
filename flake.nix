{
  description = "Ben's NixOS config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }: let
    settings = rec {
      # Control center for the configuration.
      # Change options here to your preferences.
      user = "ben";
      fullName = "Ben";
      home = "/home/${user}";

      de = "cinnamon";
      shell = "zsh";
      editor = "nvim";

      wireguard = {
        privateKeyFile = "${home}/.wg/privatekey";
        address = [ "192.168.99.3/24" ];
        dns = [ "192.168.98.2" ];
        endpoint = "toenderup.no-ip.org:51820";
        publicKey = "C3UEz3gojSQKnorZMzExarpQ5E7Vx3Hcx1KWMadAVlk=";
        allowedIPs = [ "0.0.0.0/0" ];
      };

      locale = "C.UTF-8";
      timeZone = "Europe/Berlin";
      keyboard = {
        layout = "de";
        variant = "";
        options = "caps:escape_shifted_capslock";
      };

      userDirs = {
        desktop = "Desktop";
        documents = "Dokumente";
        downloads = ".Downloads.";
        music = "Musik";
        pictures = "Bilder";
        public = "Öffentlich";
        templates = "Vorlagen";
        videos = "Videos";
      };
    };
  in {
    nixosConfigurations = {
      wunstlp = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ 
          home-manager.nixosModules.home-manager
          ./systems/wunstlp/configuration.nix 
        ];
        specialArgs = {
          inherit settings;
        };
      };
    };
  };
}

