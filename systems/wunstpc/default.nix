{ ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "wunstpc";

  # `btrfs` config.
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
  };

  services.btrfs.autoScrub.enable = true;

  # Use proprietary nvidia drivers.
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.open = false; 

  system.stateVersion = "24.11";
}

