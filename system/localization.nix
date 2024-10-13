{ config,
  lib,
  pkgs,
  settings,
  ... }:
{
  time.timeZone = settings.timeZone;
  i18n.defaultLocale = settings.locale;

  services.xserver.xkb = {
    inherit (settings.keyboard) layout variant options;
  };
  
  console = {
    font = settings.consoleFont;
    useXkbConfig = true;
  };
}

