{ ... }: {
  imports = [
    ./printing.nix
    ./desktop.nix
  ];

  # Login manager.
  services.displayManager.sddm.enable = true;

  # `rtkit` (real-time scheduling) for Pipewire.
  security.rtkit.enable = true;

  # Modern sound server.
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.support32Bit = true;
  };
}

