{ pkgs, ... }: {
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    prismlauncher
    (retroarch.withCores (cores: with cores; [
      mesen
      bsnes
      desmume
      scummvm
      vice-x64
    ]))
  ];
}

