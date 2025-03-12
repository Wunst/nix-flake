{ ... }: {
  imports = [
    ./cli
    ./gui
    ./development
    ./editor
    ./shell
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ben";
  home.homeDirectory = "/home/ben";

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}

