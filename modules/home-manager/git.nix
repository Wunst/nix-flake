{ ... }: {
  programs.git = {
    enable = true;
    userName = "Ben Matthies";
    userEmail = "matthiesbe@gmail.com";
  };

  programs.gh.enable = true;
}

