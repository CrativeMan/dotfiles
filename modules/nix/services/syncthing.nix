{ config, pkgs, lib, vars, ...}:
let
  devices = {
    Nixos-Desktop = {
      addresses = ["tcp://192.168.195.83:22000"];
      id = "YKR7CP2-JREOJC5-AZFG3VZ-EV7IAEV-63VWTBB-CV3U3LN-IX2CUCC-EAAEDQP";
    };

    Nixos-Surface = {
      addresses = ["tcp://192.168.178.39:22000"];
      id = "HZIQQRH-AMNUJBW-Q6GHRW3-53EZV6G-LX2GU6B-44LZGNR-JVKHTON-CNYJIQN";
    };

    Galaxy-A71 = {
      addresses = ["tcp://192.168.178.49:22000"];
      id = "LQRPTG4-IB2RVEE-UY66I3S-4HNQRCA-TCAGZOG-7F5DNFB-6CEQMW4-DHWOQA3";
    };
  };
  
  folders = {
    Obsidian-Personal = {
      id = "obsidian-personal";
      devices = lib.attrNames devices;
      path = "/home/crative/Documents/Personal Obsidian";
    };
    Keepass = {
      id = "keepass";
      devices = lib.attrNames devices;
      path = "/home/crative/Documents/keepass";
    };
    Obsidian-DnD = {
      id = "obsidian-dnd";
      devices = lib.attrNames devices;
      path = "/home/crative/Documents/Dungeons and Dragons";
    };
    SeminarFach = {
      id = "seminar-fach";
      devices = lib.attrNames devices;
      path = "/home/crative/Documents/Seminarfach";
    };
  };
in 
{
  options = {
    syncthing = {
      enable = lib.mkEnableOption "Enable Syncthing";
      device = lib.mkOption {
        type = lib.types.enum (lib.attrNames devices);
        default = "";
        description = "The current device";
      };
      folders = 
        lib.mapAttrs (name: folder: {
          id = lib.mkOption {
            type = lib.types.str;
            default = folder.id;
            description = "The folder ID";
          };
          enable = lib.mkEnableOption "Enable folder" // {default = true;};
          path = lib.mkOption {
            type = lib.types.str;
            default = folder.path;
            description = "The folder path";
          };
          devices = lib.mkOption {
            type = lib.types.listOf (lib.types.enum (lib.attrNames devices));
            default = lib.filter (name: name != config.syncthing.device) folder.devices;
          };
        })
        folders;
      devices = lib.mkOption {
        type = lib.types.listOf (lib.types.enum (lib.attrNames devices));
        default = lib.attrNames devices;
        description = "The devices to sync with";
      };
    };
  };
  
  config = lib.mkIf config.syncthing.enable {
    services.syncthing = {
      inherit (vars) user;
      enable = true;
      openDefaultPorts = true;
      dataDir = "/home/${vars.user}/";
      settings = {
        options = {
          relaysEnabled = true;
          urAccepted = 3;
        };
        folders =
          lib.foldr (name: acc: let
            folder = config.syncthing.folders."${name}";
          in
            acc
            // {
              "${folder.path}" = {
                inherit (folder) id devices;
                label = name;
              };
            }) {}
          (lib.attrNames
            config.syncthing.folders);
        devices = lib.foldr (name: acc: let
          device = devices."${name}";
        in
          acc
          // {
            "${name}" = {
              inherit (device) addresses id;
              inherit name;
            };
          }) {}
        config.syncthing.devices;
      };
    };
  };
}
