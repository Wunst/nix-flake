{ pkgs, ... }: {
  home.packages =
    with pkgs; [
      virt-manager
      filezilla

      httpie
      jq
      nodejs
      nodePackages.npm
      phpPackages.composer

      # Language servers.
      nil
      clang-tools # clangd
      typescript-language-server

      # Embedded dev.
      arduino
      arduino-cli
      minicom

      # Game dev.
      godot_4
      godot_4-export-templates
    ];
}

