{ config,
  lib,
  pkgs,
  hostName,
  ... }:

{
  imports = [
    ./hardware/${hostName}
    ./localization.nix
    ./users.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  boot = {
    plymouth = {
      enable = true;
      theme = "breeze";
    };

    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  networking = {
    inherit hostName;
    networkmanager.enable = true;
  };
}

