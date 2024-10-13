{ config,
  lib,
  pkgs,
  settings,
  ... }:
{
  programs.neovim.enable = true;

  programs.git.enable = true;

  environment.variables = {
    EDITOR = "nvim";
  };

  hm.home.shellAliases = {
    v = "nvim";
  };
  
  hm.programs.git = with settings.user.git; {
    enable = true;
    userName = name;
    userEmail = email;
  };

  hm.programs.gh.enable = true;
}

