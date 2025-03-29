{ ... }: {
  boot = {
    # Install boot loader.
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    # Boot splash.
    # `initrd.systemd` for graphical decryption prompt.
    initrd.systemd.enable = true;
    plymouth = {
      enable = true;
      theme = "breeze";
    };
  };
}

