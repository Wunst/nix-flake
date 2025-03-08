{ ... }: {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.ben = import ../home-manager;
  };
}

