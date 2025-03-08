{ pkgs, ... }: {
  imports = [
    ./firefox.nix
    ./thunderbird.nix
  ];

  home.packages = with pkgs; [
    discord
    libreoffice-fresh
    keepassxc
    gimp
    krita
  ];
}

