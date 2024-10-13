{ config,
  lib,
  pkgs,
  ... }:
{
  environment.systemPackages = with pkgs; [
    xsel
    fd
    ripgrep
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    withRuby = false;
    withNodeJs = false;
  };

  hm.home.shellAliases = {
    v = "nvim";
  };

  hm.home.file.".config/nvim" = {
    recursive = true;
    source = ./config;
  };
}

