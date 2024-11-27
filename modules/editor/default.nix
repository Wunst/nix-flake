{ config, lib, pkgs, settings, ... }: {
  imports = [
    ./${settings.editor}
  ];
}

