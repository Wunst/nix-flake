{ config,
  lib,
  pkgs,
  settings,
  ... }:
{
  options = with lib; with types; {
    hm = mkOption {
      type = attrsOf anything;
      default = {};
      description = "Options to be passed along to home-manager";
    };
  };

  config = with settings.user; {
    programs.${shell}.enable = true;

    users.users.${username} = {
      inherit description home;
      isNormalUser = true;
      shell = pkgs.${shell};
      extraGroups = [
        "wheel"
        "networkmanager"
      ];
      openssh.authorizedKeys.keys = sshAuthorizedKeys;
    };

    home-manager.useGlobalPkgs = true;

    home-manager.users.${username} = lib.recursiveUpdate {
      programs.${shell}.enable = true;
      home.stateVersion = "24.05";
    } config.hm;
  };
}

