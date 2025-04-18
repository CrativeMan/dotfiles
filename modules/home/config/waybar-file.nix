{ ... }:

{
  home.file.".config/waybar/config.jsonc".text = ''
    {
      "layer": "top",
        "modules-left": ["bluetooth", "network", "memory"],
        "modules-center": ["hyprland/workspaces"],
        "modules-right": ["pulseaudio/slider", "disk", "battery", "clock", "custom/shutdown"],
        "sway/window": {
          "max-length": 50
        },
        "clock": {
          "format-alt": "{:%a, %d. %b  %H:%M}"
        },
        "bluetooth": {
          // "controller": "controller1", // specify the alias of the controller if there are more than 1 on the system
          "format": " {status}",
          "format-disabled": "", // an empty format will hide the module
          "format-connected": " {num_connections} connected",
          "tooltip-format": "{controller_alias}\t{controller_address}",
          "tooltip-format-connected": "{controller_alias}\t{controller_address}\n\n{device_enumerate}",
          "tooltip-format-enumerate-connected": "{device_alias}\t{device_address}"
        },
        "hyprland/workspaces": {
          "format": "{name}: {icon}",
          "format-icons": {
            "1": "",
            "2": "",
            "3": "",
            "4": "",
            "5": "",
            "active": "",
            "default": ""
          },
          "persistent-workspaces": {
            "*": 5, // 5 workspaces by default on every monitor
            "HDMI-A-1": 3 // but only three on HDMI-A-1
          }
        },
        "disk": {
          "interval": 30,
          "format": "{percentage_free}% remaining on disk",
          "path": "/"
        },
        "network": {
          "format-disconnected": "Ø disconnected",
          "format": "⇈ connected"
        },
        "memory": {
          "interval": 30,
          "format": "{used:0.1f}G/{total:0.1f}G "
        },
        "pulseaudio/slider": {
          "min": 0,
          "max": 100,
          "orientation": "horizontal"
        },
        "custom/shutdown": {
          "format": "shutdown",
          "on-click": "kitty -e sleep 5 && ~/.config/waybar/shutdown.sh"
        }

    }
  '';

  home.file.".config/waybar/style.css".text = ''
    * {
        font-family: Roboto, Helvetica, Arial, sans-serif;
        font-size: 13px;
        min-height: 0;
        padding-left: 9px;
        padding-right: 9px;
    }

    window#waybar {
      background-color: #4f4f4f;
      border-bottom: 3px solid #aa6626;
    }

    tooltip {
    }
    tooltip label {
    }

    #workspaces button {
    }

    #workspaces button.focused {
    }

    #mode, #clock, #battery {
    }

    #mode {
    }

    #clock {
      border-right: 3px solid #aa6626;
    }

    #battery {
    }

    #bluetooth {
      border-right: 3px solid #aa6626;
    }

    #battery.charging {
    }

    @keyframes blink {
        to {
            background-color: #ffffff;
            color: black;
        }
    }

    #battery.warning:not(.charging) {
    }


    #workspaces button {
    }

    #workspaces button.empty {
    }

    #workspaces button.visible {
    }

    #workspaces button.active {
    }

    #workspaces button.urgent {
    }

    #disk {
      border-right: 3px solid #aa6626;
    }

    #network {
      border-right: 3px solid #aa6626;
    }

    #memory {
    }

    #pulseaudio-slider slider {
        min-height: 0px;
        min-width: 0px;
        border: 1px solid #5f5f5f;
        background-image: none;
        box-shadow: none;
        background-color: #aa6626;
    }
    #pulseaudio-slider trough {
        min-height: 10px;
        min-width: 80px;
        border-radius: 5px;
        background-color: #4f4f4f;
    }
    #pulseaudio-slider highlight {
        min-width: 10px;
        background-color: #aa5526;
    }

    #custom-shutdown {
    }
  '';
}
