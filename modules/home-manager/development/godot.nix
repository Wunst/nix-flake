{ pkgs, ... }: {
  home.packages = with pkgs; [
    godot_4
    godot_4-export-templates
  ];
}

