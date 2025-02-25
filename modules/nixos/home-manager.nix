{ ... }: {
  home-manager = {
    useGlobalPkgs = true; # Inherit allow-unfree and overlays from the system.
    useUserPackages = true;
    users.ben = import ../home-manager;
  };
}

