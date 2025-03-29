{ ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "wunstpc";

  # Mount options.
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
  };

  # `btrfs` cleanup serivce.
  services.btrfs.autoScrub.enable = true;

  # Use proprietary NVIDIA drivers.
  # Open drivers work well for newer cards, but not the 1050Ti.
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.open = false;

  system.stateVersion = "24.11";
}

