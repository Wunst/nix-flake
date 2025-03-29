{ pkgs, ... }: {
  # Let home-manager manage our shells.
  # Required to include user profiles.
  programs.bash.enable = true;

  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "junkfood";
      plugins = [
        "sudo"
        "git"
        "ssh"
        "tmux"
        "fzf"
      ];
    };
  };

  programs.tmux = {
    enable = true;
    keyMode = "vi";
    shortcut = "a"; # <C-a>
  };

  programs.git = {
    enable = true;
    extraConfig = {
      user = {
        name = "Ben Matthies";
        email = "matthiesbe@gmail.com";
      };
      init.defaultBranch = "main"; # Match GitHub's default.
    };
  };

  programs.gh = {
    enable = true;
    settings = {
      aliases = {
        clone = "repo clone";
        co = "pr checkout";
        re = "release create";
      };
    };
    # include credentials?
  };

  # More CLI apps without configuration.
  home.packages = 
    with pkgs; [
      htop
      killall
      ripgrep
      fzf
      inetutils
    ];
}

