{ ... }: {
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    shortcut = "a"; # <C-a>
  };
}

