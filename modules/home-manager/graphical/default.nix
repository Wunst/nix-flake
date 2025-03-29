{ pkgs, ... }: {
  # TODO: Firefox config.
  # More desktop apps without configuration.
  home.packages =
    with pkgs; [
      firefox
      thunderbird
      libreoffice-fresh
      synology-drive-client
      keepassxc
      gimp
      krita
      blender
      discord
      spotify
    ];
}

