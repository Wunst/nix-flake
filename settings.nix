{
  timeZone = "Europe/Berlin";
  locale = "C.UTF-8";

  consoleFont = "eurlatgr";

  keyboard = {
    layout = "de";
    variant = "";
    options = "caps:escape_shifted_capslock";
  };

  user = {
    username = "ben"; # Your username.
    home = "/home/ben";
    description = "Ben"; # Your human-readable name.
    git = {
      name = "Wunst";
      email = "matthiesbe@gmail.com";
    };
    shell = "zsh";
  };

  desktop = {
    userDirs = {
      createDirectories = false; # I use SynologyDrive on my home.
      desktop = "Desktop";
      documents = "Dokumente";
      download = ".Downloads"; # Don't sync Downloads.
      music = "Musik";
      pictures = "Bilder";
      publicShare = "Öffentlich";
      templates = "Vorlagen";
      videos = "Videos";
    };
  };
}

