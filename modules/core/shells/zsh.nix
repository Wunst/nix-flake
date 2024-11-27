{ config, lib, pkgs, settings, ... }: {
  programs.zsh.enable = true;

  users.defaultUserShell = pkgs.zsh;

  home-manager.users.${settings.user} = {
    programs.zsh = {
      enable = true;
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "ssh"
          "tmux"
        ];

        theme = "fino-time";
      };
    };
  };
}

