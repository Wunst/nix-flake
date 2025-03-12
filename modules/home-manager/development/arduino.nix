{ pkgs, ... }: {
  home.packages = with pkgs; [
    arduino
    arduino-cli
  ];
}

