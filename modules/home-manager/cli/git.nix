{ ... }: {
  programs.git = {
    enable = true;

    extraConfig = {
      user = {
        name = "Ben Matthies";
        email = "matthiesbe@gmail.com";
      };

      init.defaultBranch = "main";
    };

    # Fancy diff view.
    delta.enable = true;
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
  };
}

