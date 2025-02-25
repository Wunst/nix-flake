{ ... }: {
  time.timeZone = "Europe/Berlin";

  i18n = {
    defaultLocale = "de_DE.UTF-8";
    extraLocaleSettings = {
      LC_COLLATE = "C.UTF-8"; # Sort uppercase first.
    };
  };

  services.xserver.xkb = {
    layout = "de";
    variant = "";
    options = "caps:escape_shifted_capslock";
  };

  console.useXkbConfig = true;
}

