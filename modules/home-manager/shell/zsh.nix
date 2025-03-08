{ ... }: {
  # `zsh` with `oh-my-zsh` is currently my main shell.
  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "jonathan";
      plugins = [
        "sudo"
        "git"
        "ssh"
        "tmux"
       #"fzf"
      ];
    };
  };
}

