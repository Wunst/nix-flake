{ ... }: {
  imports = [
    ./printing.nix
  ];

  services.xserver = {
    enable = true;
    displayManager.sddm.enable = true;
    desktopManager = {
      plasma6.enable = true;
    };
  };

  # Sound server.
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
}

