{ ... }: {
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    # Boot splash.
    initrd.systemd.enable = true;
    plymouth = {
      enable = true;
      theme = "breeze";
    };
  };
}

