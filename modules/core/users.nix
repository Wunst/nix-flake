{ config, lib, pkgs, settings, ... }: {
  users.users.${settings.user} = {
    description = settings.fullName;
    home = settings.home;
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  home-manager.useGlobalPkgs = true;

  home-manager.users.${settings.user} = {
    home.stateVersion = "24.05";
  };
}

