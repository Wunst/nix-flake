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
    enable = true;
    userName = name;
    userEmail = email;
  };

  hm.programs.gh.enable = true;
}

