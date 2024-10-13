{ config,
  lib,
  pkgs,
  settings,
  ... }:
{
  imports = [
    ./nvim
  ];

  programs.git.enable = true;

  hm.programs.git = with settings.user.git; {
    delta = {
      enable = true;
      options = {
        syntax-theme = "gruvbox-dark";
        line-numbers = true;
      };
    };
    enable = true;
    userName = name;
    userEmail = email;
  };

  hm.programs.gh.enable = true;
}

