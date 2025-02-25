{ pkgs, ... }: {
  imports = [
    ./firefox.nix
    ./thunderbird.nix
  ];

  home.packages = with pkgs; [
    libreoffice-fresh
    keepassxc
    synology-drive-client
    discord
    gimp
    krita
    blender
  ];
}

