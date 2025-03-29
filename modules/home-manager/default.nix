{ ... }: {
  imports = [
    ./common
    ./editor
    ./graphical
    ./development
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ben";
  home.homeDirectory = "/home/ben";

  # Analogous to `system.stateVersion`.
  home.stateVersion = "24.11";

  # Let home-manager manage itself (only relevant on non-NixOS module).
  programs.home-manager.enable = true;
}

