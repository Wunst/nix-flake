{ config, lib, pkgs, settings, ... }: {
  programs.neovim = {
    enable = true;
  };

  home-manager.users.${settings.user} = {
    programs.neovim = {
      enable = true;
      defaultEditor = true;
      extraPackages = with pkgs; [
        xsel git fd ripgrep
      ];
    };

    home.file.".config/nvim" = {
      source = ./config;
      recursive = true;
    };

    home.shellAliases = {
      v = "nvim";
    };
  };
} 

