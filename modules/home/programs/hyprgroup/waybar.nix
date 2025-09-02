{pkgs, ...}: {
  home.packages = with pkgs; [
    pulseaudio
    networkmanager
    libappindicator
    libnotify
    jq
  ];

  programs.waybar = {
    enable = true;
    package = pkgs.waybar;

    systemd = {
      enable = true;
      target = "hyprland-session.target";
    };

    settings = {
      mainBar = {
        output = ["DP-1" "eDP-1"];
        layer = "bottom";
        spacing = 0;
        height = 0;
        margin-bottom = 0;
        margin-top = 15;
        position = "top";
        margin-right = 500;
        margin-left = 500;
        modules-left = [
          "custom/applauncher"
        ];
        modules-center = [
          "custom/workspace-1"
          "custom/workspace-2"
          "custom/power-mode"
          "custom/workspace-3"
          "custom/workspace-4"
        ];
        modules-right = [
          "network"
          "battery"
          "pulseaudio"
          "tray"
          "clock"
        ];
        #─────────────────────────────────────────────────────────────────────────
        # Workspaces
        "custom/workspace-1" = {
          exec = "~/.config/waybar/scripts/workspace-1.sh";
          interval = 1;
          on-click = "hyprctl dispatch workspace 1";
          tooltip = "Switch to workspace 1";
        };
        "custom/workspace-2" = {
          exec = "~/.config/waybar/scripts/workspace-2.sh";
          interval = 1;
          on-click = "hyprctl dispatch workspace 2";
          tooltip = "Switch to workspace 2";
        };
        "custom/power-mode" = {
          exec = "~/.config/waybar/scripts/power-mode.sh";
          format = "[Power Mode]";
          interval = 1;
        };
        "custom/workspace-3" = {
          exec = "~/.config/waybar/scripts/workspace-3.sh";
          interval = 1;
          on-click = "hyprctl dispatch workspace 3";
          tooltip = "Switch to workspace 3";
        };
        "custom/workspace-4" = {
          exec = "~/.config/waybar/scripts/workspace-4.sh";
          interval = 1;
          on-click = "hyprctl dispatch workspace 4";
          tooltip = "Switch to workspace 4";
        };

        "custom/applauncher" = {
          format = " ";
          on-click = "pgrep wofi >/dev/null 2>&1 && killall wofi || ${pkgs.wofi}/bin/wofi --show drun --location=top -y 15";
          tooltip = false;
        };

        "tray" = {
          spacing = 10;
          tooltip = false;
        };
        "clock" = {
          format = "⌚ {:%H:%M}";
          tooltip = false;
        };
        "network" = {
          format-wifi = " {bandwidthDownBits}";
          format-ethernet = " {bandwidthDownBits}";
          format-disconnected = "⚠ No Network";
          interval = 5;
          tooltip = false;
        };
        "pulseaudio" = {
          scroll-step = 5;
          max-volume = 150;
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}%";
          format-icons = [
            " "
            " "
            " "
          ];
          nospacing = 1;
          format-muted = "婢";
          on-click = "pavucontrol";
          tooltip = false;
        };
        "battery" = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-charging = " {capacity}%";
          format-plugged = "{capacity}%";
          format-alt = "{icon} {time}";
          format-full = " {capacity}%";
          format-icons = [
            ""
            ""
            ""
          ];
        };
      };
    };

    style = ''
      * {
        /* General taskbar font, I like maple mono ^-^*/
        font-family: Maple Mono;
        border-radius: 8;
        font-size: 14px;
        padding: 0px;
        background: transparent;
      }

      window#waybar {
        /* Linear gradients are used because it makes less harsh rounded border radius, gtk bug :p */
        background-image: linear-gradient(to bottom, #141216 100%);
        border-radius: 14px;
        padding: 0px;
        border-style: none;
      }

      #battery,
      #network,
      #clock,
      #custom-applauncher,
      #custom-workspace-1,
      #custom-workspace-2,
      #custom-workspace-3,
      #custom-workspace-4,
      #tray,
      #workspaces,
      #pulseaudio {
        background-image: linear-gradient(to bottom, #27232b 100%);

        margin: 6px;
        margin-right: 0px;
        padding: 4px 8px;
        border-radius: 8px;
        color: #d8cab8;

        border-style: none;
        transition-duration: 120ms;
      }

      #clock {
        margin-right: 6px;
      }

      #pulseaudio:hover {
        background-image: linear-gradient(to bottom, #ac82e9 100%);
        color: #141216;
        transition-duration: 120ms;
      }

      #custom-applauncher {
        font-weight: bold;
        transition-duration: 120ms;
      }
      #custom-applauncher:hover {
        background-image: linear-gradient(to bottom, #ac82e9 100%);
        color: #141216;
        transition-duration: 120ms;
      }

      #tray menu {
        background-color: #141216;
        color: #d8cab8;
        padding: 4px;
      }
      #tray menu menuitem {
        background-image: linear-gradient(to bottom, #27232b 100%);

        margin: 3px;
        color: #d8cab8;
        border-radius: 4px;
        border-style: solid;
        border-color: #27232b;
      }
      #tray menu menuitem:hover {
        background-image: linear-gradient(to bottom, #27232b 100%);
        color: #ac82e9;
        font-weight: bold;
      }

      #workspaces button {
        transition-duration: 100ms;
        all: initial;
        min-width: 0;
        font-weight: bold;
        color: #d8cab8;
        margin-right: 0.2cm;
        margin-left: 0.2cm;
      }

      #workspaces button:hover {
        transition-duration: 120ms;
        color: #8f56e1;
      }
      #workspaces button.focused {
        color: #ac82e9;
        font-weight: bold;
      }
      #workspaces button.active {
        color: #ac82e9;
        font-weight: bold;
      }
      #workspaces button.urgent {
        color: #fcb167;
      }

      #battery {
        color: #d8cab8;
      }
      #battery.warning,
      #battery.critical {
        color: #1d2021;
        background-color: #fc4649;
      }
    '';
  };
}
