{pkgs, ...}: {
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;

    systemd = {
      enable = true;
      target = "hyprland-session.target";
    };

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        spacing = 7;

        output = ["*"];

        modules-left = ["custom/launcher" "hyprland/workspaces" "hyprland/window"];
        modules-center = ["clock"];
        modules-right = ["cpu" "memory" "disk" "pulseaudio" "network" "battery" "tray"];

        "custom/launcher" = {
          format = "  ";
          on-click = "rofi -show drun";
          on-click-right = "killall rofi";
          tooltip = false;
        };

        "hyprland/workspaces" = {
          format = "{name}";
          all-outputs = true;
          disable-scroll = false;
          on-click = "activate";
        };

        "clock" = {
          format = "{:%H:%M %d/%m/%Y}";
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          interval = 60;
        };

        "cpu" = {
          interval = 5;
          format = "  {usage}%";
          max-length = 10;
        };

        "disk" = {
          format = "💾 {used}/{total}";
          interval = 30;
          unit = "GB";
          path = "/";
        };

        "memory" = {
          interval = 5;
          format = "  {}%";
          max-length = 10;
        };

        "pulseaudio" = {
          format = "{volume}% {icon}";
          format-muted = "🔇";
          format-icons = {
            default = ["🔈" "🔉" "🔊"];
          };
          on-click = "pavucontrol";
        };

        "network" = {
          format-wifi = "{essid} ({signalStrength}%) ";
          format-ethernet = "Ethernet ";
          format-disconnected = "Disconnected ⚠";
          tooltip-format = "{ifname}: {ipaddr}/{cidr}";
        };

        "battery" = {
          format = "{capacity}% {icon}";
          format-icons = ["" "" "" "" ""];
          states = {
            warning = 30;
            critical = 15;
          };
        };

        "tray" = {
          icon-size = 21;
          spacing = 10;
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 13px;
        min-height: 0;
        border: none;
        border-radius: 0;
        margin: 0;
        padding: 0;
        color: #89b4fa;
      }

      window#waybar {
        background-color: rgba(30, 30, 46, 0.9);
        color: #cdd6f4;
        transition-property: background-color;
        transition-duration: 0.5s;
      }

      #workspaces button {
        padding: 0 5px;
        background-color: transparent;
        color: #cdd6f4;
        border-bottom: 3px solid transparent;
      }

      #workspaces button.active {
        background-color: #313244;
        border-bottom: 3px solid #89b4fa;
      }

      #clock {
        padding: 0 10px;
        color: #89b4fa;
      }

      #battery,
      #network,
      #pulseaudio,
      #tray {
        padding: 0 10px;
      }

      #battery.critical {
        background-color: #f38ba8;
        color: #1e1e2e;
        animation-name: blink;
        animation-duration: 0.5s;
        animation-timing-function: linear;
        animation-iteration-count: infinite;
        animation-direction: alternate;
      }

      @keyframes blink {
        to {
          background-color: #1e1e2e;
          color: #f38ba8;
        }
      }
    '';
  };

  home.packages = with pkgs; [
    pulseaudio
    networkmanager
    libappindicator
    libnotify
  ];
}
