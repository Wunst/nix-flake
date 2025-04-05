{ ... }: {
  imports = [
    ./common
    ./graphical
    ./docker.nix
    ./gaming.nix
    ./wireshark.nix
    ./wireguard-client.nix
  ];
}

