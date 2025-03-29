{ ... }: {
  # Internationalisation configuration.
  # Define time zone.
  time.timeZone = "Europe/Berlin";

  # Define locale.
  i18n = {
    defaultLocale = "de_DE.UTF-8";
    extraLocaleSettings = {
      LC_COLLATE = "C.UTF-8"; # Sort upcase-first.
    };
  };

  # Keyboard layout for X and console targets.
  services.xserver.xkb = {
    layout = "de";
    variant = "";
    options = "caps:escape";
  };

  console.useXkbConfig = true;
}

