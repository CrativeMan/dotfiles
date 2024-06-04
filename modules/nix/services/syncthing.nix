{ config, pkgs, lib, ...}:
let
  devices = {
    Nixos-Desktop = {
      addresses = ["tcp://192.168.195.83:22000"];
      id = "NJ5GL7O-CNGNFLB-FAOJQPJ-JWN2QPY-R4EZSRY-525FWT5-AETHVDY-HYPJUQ6";
    };

    Galaxy-A71 = {
      addresses = ["tcp://192.168.178.49:22000"];
      id = "LQRPTG4-IB2RVEE-UY66I3S-4HNQRCA-TCAGZOG-7F5DNFB-6CEQMW4-DHWOQA3";
    };
  };
  
  folders = {
    Obsidian-Personal = {
      id = "obsidian-personal";
      devices = [ "Galaxy-A71" ];
      path = "/home/crative/Documents/Personal Obsidian";
    };
    Keepass = {
      id = "keepass";
      devices = [ "Galaxy-A71" ];
      path = "/home/crative/Documents/keepass";
    };
  };
in 
{
  services.syncthing = {
    user = "crative";
    enable = true;
    openDefaultPorts = true;
    dataDir = "/home/crative/";
    settings = {
      options = {
        relaysEnabled = true;
        urAccepted = 3;
      };
      devices = {
        inherit (devices) Galaxy-A71;
      };
      folders = {
        inherit (folders) Obsidian-Personal Keepass;
      };
    };
  };
}
