{ ... }: {
  imports = [
    ./boot.nix
    ./i18n.nix
    ./users.nix
  ];

  # Networking configuration.
  # Use network manager.
  networking.networkmanager.enable = true;

  # Package manager configuration.
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
  };

  # Compress data in memory instead of swapping to disk.
  zramSwap.enable = true;

  # Services.
  # Enable firmware updates, as applicable.
  services.fwupd.enable = true;

  # Enable sshd, if only to generate host keys.
  services.openssh = {
    enable = true;
    settings = {
      X11Forwarding = true;
      PermitRootLogin = "no";
      PasswordAuthentication = false;
    };
  };

  # auto-update...
}

