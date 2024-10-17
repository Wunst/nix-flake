{ config,
  lib,
  pkgs,
  settings,
  ... }:
{
  hm.programs.zsh.oh-my-zsh = {
    enable = true;

    plugins = [
      "git"
      "ssh"
    ];

    theme = settings.theming.prompt;
  };
}

