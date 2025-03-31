{ ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "wunstlp";

  # Mount options.
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
  };

  # `btrfs` cleanup serivce.
  services.btrfs.autoScrub.enable = true;

  # Modules.
  wunst.modules.wireguard-client.enable = true;

  system.stateVersion = "24.11";
}


