{ config,
  lib,
  pkgs,
  hostName,
  ... }:

{
  imports = [
    ./hardware/${hostName}
    ./allow-unfree.nix
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

  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "no";
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
    };
  };
}

