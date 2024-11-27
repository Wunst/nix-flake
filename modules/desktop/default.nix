{ config, lib, pkgs, settings, ... }: {
  imports = [
    ./de/${settings.de}.nix
  ];

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
  };

  environment.systemPackages = with pkgs; [
    firefox thunderbird keepassxc libreoffice gimp blender
    synology-drive-client
  ];

  services = {
    blueman.enable = true;
    printing.enable = true;
    printing.drivers = [ pkgs.hplip ];
    avahi = {
      enable = true;
      nssmdns4 = true;
    };
  };
}

