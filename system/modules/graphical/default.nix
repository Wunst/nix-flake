{ config,
  lib,
  pkgs,
  ... }:
{
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.cinnamon.enable = true;
  };

  environment.systemPackages = with pkgs; [
    firefox
    thunderbird
  ];
}

