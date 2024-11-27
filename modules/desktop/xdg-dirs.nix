{ config, lib, pkgs, settings, ... }: {
  home-manager.users.${settings.user} = {
    xdg.userDirs = builtins.mapAttrs (_: dir: "${settings.home}/${dir}") {
      inherit (settings.userDirs) desktop documents downloads pictures public
        templates videos;
      createDirectories = false;
    };
  };
}

