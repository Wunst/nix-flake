{ config,
  lib,
  pkgs,
  settings,
  ... }:
with settings.user; {
  programs.${shell}.enable = true;

  users.users.${username} = {
    inherit description;
    isNormalUser = true;
    shell = pkgs.${shell};
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
  };

  home-manager.useGlobalPkgs = true;

  home-manager.users.${username} = {
    programs.${shell}.enable = true;
    home.stateVersion = "24.05";
  };
}

