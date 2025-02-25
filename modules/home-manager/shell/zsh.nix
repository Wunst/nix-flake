{ ... }: {
  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "mikeh";
      plugins = [
        "ssh"
        "git"
        "fzf"
        "tmux"
      ];
    };
  };

  programs.fzf.enable = true; # Fuzzy completion.
}

