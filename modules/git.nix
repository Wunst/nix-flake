{ config, lib, pkgs, settings, ... }: {
  programs.git.enable = true;

  home-manager.users.${settings.user} = {
    programs.gh = {
      enable = true;
      settings.aliases = {
        re = "release create";
      };
    };
  };
}

