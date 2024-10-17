{ config,
  lib,
  pkgs,
  settings,
  ... }:
{
  programs.tmux = {
    enable = true;
    keyMode = settings.keyMode;
    clock24 = true;
    terminal = "tmux-256color";
    shortcut = settings.shortcuts.tmux;
    baseIndex = 1;
  };
}

