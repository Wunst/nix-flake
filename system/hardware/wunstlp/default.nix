{ config,
  lib,
  pkgs,
  ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/dev
    ../../modules/graphical
  ];

  boot.initrd.luks.devices.root = {
    device = "/dev/nvme0n1p2";
    preLVM = true;
  };

  system.stateVersion = "24.05";
}

