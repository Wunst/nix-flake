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
}

