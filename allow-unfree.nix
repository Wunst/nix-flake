{ lib, ... }: {
  nixpkgs.config.allowUnfreePredicate = 
    pkg: builtins.elem (lib.getName pkg) [
      "nvidia-x11"
      "nvidia-settings"
      "synology-drive-client"
      "discord"
      "spotify"
      "steam"
      "steam-unwrapped"
    ];
}

