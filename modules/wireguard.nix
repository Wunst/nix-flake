{ config, lib, pkgs, settings, ... }: {
  # Server-client setup for simple home VPN.

  networking.wireguard.enable = true;

  networking.wg-quick = {
    interfaces.wg0 = {
      inherit (settings.wireguard) address dns privateKeyFile;
      peers = [ {
        inherit (settings.wireguard) allowedIPs endpoint publicKey;
      } ];
    };
  };
}

