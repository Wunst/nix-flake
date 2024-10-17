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
    sshAuthorizedKeys = [
      "sk-ecdsa-sha2-nistp256@openssh.com AAAAInNrLWVjZHNhLXNoYTItbmlzdHAyNTZAb3BlbnNzaC5jb20AAAAIbmlzdHAyNTYAAABBBHCrM09d4P9jT4bSwAKREEKfOFfX905hCIer/7SIGSB4GIFGvJ130efh1K7gpHKjLgiooPrQKzb7ljBRT1TGZ60AAAAEc3NoOg== Ben@Token2.R"
      "sk-ecdsa-sha2-nistp256@openssh.com AAAAInNrLWVjZHNhLXNoYTItbmlzdHAyNTZAb3BlbnNzaC5jb20AAAAIbmlzdHAyNTYAAABBBH95/J3jLiUrKVVj9NfwChj8UdyEeh5KtM1xLZ7+K0NKC9eEG/VJyYf/0j1WK4NDFEshj6cIY2Iq9VTVYESpnxwAAAAEc3NoOg== Ben@Token2.G"
    ];
    shell = "zsh";
  };

  theming = {
    prompt = "philips"; # For oh-my-zsh.
  };

  keyMode = "vi";

  shortcuts = {
    tmux = "a";
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

