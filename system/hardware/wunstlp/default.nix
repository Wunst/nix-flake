{ config,
  lib,
  pkgs,
  ... }:
{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.initrd.luks.devices.root = {
    device = "/dev/nvme0n1p2";
    preLVM = true;
  };

  system.stateVersion = "24.05";
}

