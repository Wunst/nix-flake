{ ... }: {
  imports = [
    # Base system.
    ./system
    ./home-manager.nix

    # Modules.
    ./desktop
    ./games
  ];
}

