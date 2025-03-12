{ pkgs, ... }: {
  programs.zsh.enable = true;

  users.users.ben = {
    isNormalUser = true;
    description = "Ben";
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
      "tty"
    ];
  };
}

