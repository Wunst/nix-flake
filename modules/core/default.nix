{ config, lib, pkgs, settings, ... }: {
  imports = [
    ../allow-unfree.nix
    ./i18n.nix
    ./users.nix
    ./shells/${settings.shell}.nix
  ];

  nix.settings.experimental-features = [ "flakes" "nix-command" ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  boot.initrd.systemd.enable = true;
  boot.plymouth.enable = true;

  networking.networkmanager.enable = true;
}

