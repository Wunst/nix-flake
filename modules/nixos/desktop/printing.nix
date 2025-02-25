{ ... }: {
  services.printing.enable = true;

  services.avahi.enable = true; # Discover network printers.
}

