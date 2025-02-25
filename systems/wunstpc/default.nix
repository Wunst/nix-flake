{ ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "wunstpc";

  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
  };

  services.btrfs.autoScrub.enable = true;

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.open = false; # Use proprietary nvidia drivers.

  system.stateVersion = "24.11";
}

