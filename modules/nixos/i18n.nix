{ ... }: {
  time.timeZone = "Europe/Berlin";

  i18n = {
    defaultLocale = "de_DE.UTF-8";
    extraLocaleSettings = {
      # Sort upcase-first.
      LC_COLLATE = "C.UTF-8";
    };
  };

  services.xserver.xkb = {
    layout = "de";
    variant = "";
    options = "caps:escape_shifted_capslock";
  };

  console.useXkbConfig = true;
}

