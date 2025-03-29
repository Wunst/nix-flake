{ ... }: {
  nixpkgs.overlays = [
    (import ./spotify-spotx-overlay.nix)
  ];
}

