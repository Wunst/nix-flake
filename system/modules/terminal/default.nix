{ config,
  lib,
  pkgs,
  ... }:
{
  imports = [
    ./tmux.nix
    ./oh-my-zsh.nix
  ];
}

