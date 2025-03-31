{ config, lib, ... }: let
  cfg = config.wunst.modules.wireguard-client;
in {
  options.wunst.modules.wireguard-client = with lib; {
    enable = mkEnableOption "`wg-quick` VPN client";
  };

  config = lib.mkIf cfg.enable {
    networking.wg-quick.interfaces.wg0 = {
      address = [ "192.168.99.3/24" ];
      dns = [ "192.168.98.2" ];
      privateKeyFile = "/wg/privatekey";
      peers = [{
        allowedIPs = [ "192.168.98.0/23" ];
        endpoint = "toenderup.no-ip.org:51820";
        publicKey = "C3UEz3gojSQKnorZMzExarpQ5E7Vx3Hcx1KWMadAVlk=";
      }];
    };
  };
}

