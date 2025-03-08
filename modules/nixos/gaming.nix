{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    steam
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

