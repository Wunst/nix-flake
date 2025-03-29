{ pkgs, ... }: {
  # Installing `steam` alone will not work.
  # I think this does something to the autoupdater.
  programs.steam.enable = true;

  environment.systemPackages =
    with pkgs; [
      prismlauncher

      # Emulators.
      (retroarch.withCores (cores:
        with cores; [
          mesen
          bsnes
          #desmume
          #scummvm
          vice-x64
        ]))
      #rpcs3
    ];

  # Open ports on Minecraft server.
  # Do this somewhere else (as a service)?
  networking.firewall.allowedTCPPorts = [ 25565 ];
}

