{ pkgs, ... }: {
  # Define login shells.
  programs.zsh.enable = true;

  # Primary user.
  users.users.ben = {
    isNormalUser = true;
    description = "Ben";
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
      "uucp"
      "wireshark"
    ];
  };

  home-manager = {
    useGlobalPkgs = true; # Use system `nixpkgs.{config,overlays}`.
    useUserPackages = true;
    users.ben = import ../../home-manager;
  };
}

