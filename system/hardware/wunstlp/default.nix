{ config,
  lib,
  pkgs,
  ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/dev
    ../../modules/graphical
    ../../modules/terminal
    ../../modules/virtualization.nix
    ../../modules/printing.nix
  ];

  boot.initrd.luks.devices.root = {
    device = "/dev/nvme0n1p2";
    preLVM = true;
  };

  system.stateVersion = "24.05";
}

