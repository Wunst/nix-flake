{ config,
  lib,
  pkgs,
  ... }:
{
  imports = [
    ./xdg-dirs.nix
  ];

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.cinnamon.enable = true;
  };

  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  environment.systemPackages = with pkgs; [
    firefox
    thunderbird
    keepassxc
    synology-drive-client
    libreoffice
  ];
}

