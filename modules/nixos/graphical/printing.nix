{ pkgs, ... }: {
  # Enable CUPS for printing.
  services.printing = {
    enable = true;
    drivers = with pkgs; [
      hplip
    ];
  };

  services.avahi = {
    enable = true; # Discover network printers.
    nssmdns4 = true;
  };
}

