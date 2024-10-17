{ config,
  lib,
  pkgs,
  ... }:
{
  fonts = {
    packages = with pkgs; [
      terminus-nerdfont
    ];

    fontconfig.defaultFonts = {
      monospace = [
        "Terminess Nerd Font"
      ];
    };
  };

  hm.gtk.font = {
    name = "Terminess Nerd Font";
    size = 12;
    package = pkgs.terminus-nerdfont;
  };
}

