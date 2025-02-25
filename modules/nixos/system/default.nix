{ ... }: {
  imports = [
    ./boot.nix
    ./i18n.nix
    ./users.nix
  ];

  networking.networkmanager.enable = true;

  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
  };
}

