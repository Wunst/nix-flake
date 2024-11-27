{ config, lib, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ../../modules/core
    ../../modules/desktop
    ../../modules/editor
    ../../modules/git.nix
    ../../modules/virtualization.nix
    ../../modules/wireguard.nix
  ];

  boot.initrd.luks.devices.root = {
    device = "/dev/nvme0n1p2";
    preLVM = true;
  };
  
  networking.hostName = "wunstlp";

  system.stateVersion = "24.05";
}

