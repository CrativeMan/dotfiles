{pkgs, ...}: {
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;

    systemd = {
      enable = true;
      targets = ["hyprland-session.target"];
    };

    settings = {
      mainBar = {
        output = ["DP-1" "eDP-1"];
        layer = "top";
        position = "top";
        height = 32;
        spacing = 4;

        modules-left = [
          "hyprland/workspaces"
        ];

        modules-center = [
          "clock"
        ];

        modules-right = [
          "tray"
          "pulseaudio"
          "network"
          "battery"
        ];

        "hyprland/workspaces" = {
          persistent-workspaces = {"*" = 4;};
          format = "{id}";
        };

        clock = {
          format = "{:%a %d %b  %H:%M}";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
        };

        battery = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon}  {capacity}%";
          format-charging = "󰂄  {capacity}%";
          format-plugged = "󰚥  {capacity}%";
          format-icons = ["󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
          tooltip = true;
        };

        network = {
          format-wifi = "  {essid}";
          format-ethernet = "󰈀  {ifname}";
          format-disconnected = "󰖪  offline";
          tooltip-format = "{ipaddr}  {signalStrength}%";
        };

        pulseaudio = {
          format = "{icon}  {volume}%";
          format-muted = "󰝟  muted";
          format-icons = {
            default = ["󰕿" "󰖀" "󰕾"];
          };
          on-click = "pavucontrol";
          scroll-step = 5;
        };

        tray = {
          spacing = 8;
          icon-size = 14;
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", monospace;
        font-size: 12px;
        border: none;
        border-radius: 0;
        min-height: 0;
      }

      window#waybar {
        background-color: #0e0e0e;
        color: #d0d0d0;
        border-bottom: 1px solid #1e1e1e;
      }

      .modules-left,
      .modules-center,
      .modules-right {
        padding: 0 8px;
      }

      /* Workspaces */
      #workspaces button {
        background-color: transparent;
        color: #555555;
        padding: 2px 10px;
        border-radius: 3px;
        transition: all 0.15s ease;
      }

      #workspaces button:hover {
        background-color: #1a1a1a;
        color: #888888;
      }

      #workspaces button.active {
        background-color: #1e1e1e;
        color: #d0d0d0;
      }

      #workspaces button.urgent {
        color: #e06c75;
      }

      /* Shared module style */
      #clock,
      #battery,
      #network,
      #pulseaudio,
      #tray {
        background-color: transparent;
        color: #888888;
        padding: 0 10px;
      }

      #clock {
        color: #d0d0d0;
      }

      /* Battery states */
      #battery.warning {
        color: #e5c07b;
      }

      #battery.critical {
        color: #e06c75;
      }

      #battery.charging {
        color: #98c379;
      }

      /* Tray */
      #tray > .passive {
        -gtk-icon-effect: dim;
      }

      #tray > .needs-attention {
        -gtk-icon-effect: highlight;
        color: #e06c75;
      }
    '';
  };
}
