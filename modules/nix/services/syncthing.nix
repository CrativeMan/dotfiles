{ config, lib, vars, ... }:
let
  devices = {
    Nixos-Desktop = {
      addresses = [ "tcp://192.168.178.112:22000" ];
      id = "2R3LY2W-4J6CBKC-H6AMP4U-S3A75OA-3Q22EI3-HVDV72P-LXLSFG7-L57C4QJ";
    };

    Galaxy-A71 = {
      addresses = [ "tcp://192.168.178.49:22000" ];
      id = "LQRPTG4-IB2RVEE-UY66I3S-4HNQRCA-TCAGZOG-7F5DNFB-6CEQMW4-DHWOQA3";
    };

    Tablet = {
      addresses = [ "tcp://192.168.178.70:22000" ];
      id = "COH7MCE-Q442VEJ-LIZYSI5-RLLGPX5-QIV23AI-P3AXCZG-LKV6EFC-MOGQOAB";
    };

    Nixos-Framework = {
      addresses = [ "tcp://192.168.178.146:22000" ];
      id = "YETSICG-QJOOUQJ-WTIP475-PAUDFJI-3KZJE35-IQO6V7K-WJP7CMP-G7EEKAW";
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
    JugendRotKreuz = {
      id = "jrk";
      devices = lib.attrNames devices;
      path = "/home/crative/Documents/Jrk";
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
        lib.mapAttrs
          (name: folder: {
            id = lib.mkOption {
              type = lib.types.str;
              default = folder.id;
              description = "The folder ID";
            };
            enable = lib.mkEnableOption "Enable folder" // { default = true; };
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
          lib.foldr
            (name: acc:
              let
                folder = config.syncthing.folders."${name}";
              in
              acc
              // {
                "${folder.path}" = {
                  inherit (folder) id devices;
                  label = name;
                };
              })
            { }
            (lib.attrNames
              config.syncthing.folders);
        devices = lib.foldr
          (name: acc:
            let
              device = devices."${name}";
            in
            acc
            // {
              "${name}" = {
                inherit (device) addresses id;
                inherit name;
              };
            })
          { }
          config.syncthing.devices;
      };
    };
  };
}
