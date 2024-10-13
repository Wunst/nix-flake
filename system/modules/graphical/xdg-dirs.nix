{ config,
  lib,
  pkgs,
  settings,
  ... }:
{
  hm.xdg.userDirs = with settings.desktop.userDirs; {
    inherit createDirectories;
    enable = true;
    desktop = "${settings.user.home}/${desktop}";
    documents = "${settings.user.home}/${documents}";
    download = "${settings.user.home}/${download}";
    music = "${settings.user.home}/${music}";
    pictures = "${settings.user.home}/${pictures}";
    publicShare = "${settings.user.home}/${publicShare}";
    templates = "${settings.user.home}/${templates}";
    videos = "${settings.user.home}/${videos}";
  };
}

