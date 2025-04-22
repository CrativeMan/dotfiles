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

      @define-color background-darker rgba(30, 31, 41, 230);
      @define-color background #282a36;
      @define-color selection #44475a;
      @define-color foreground #f8f8f2;
      @define-color comment #6272a4;
      @define-color cyan #8be9fd;
      @define-color green #50fa7b;
      @define-color orange #ffb86c;
      @define-color pink #ff79c6;
      @define-color purple #bd93f9;
      @define-color red #ff5555;
      @define-color yellow #f1fa8c;

      * {
          border: none;
          border-radius: 0;
          font-family: Iosevka;
          font-size: 11pt;
          min-height: 0;
      }

      window#waybar {
          opacity: 0.9;
          background: @background-darker;
          color: @foreground;
          border-bottom: 2px solid @background;
      }

      #workspaces button {
          padding: 0 10px;
          background: @background;
          color: @foreground;
      }

      #workspaces button:hover {
          box-shadow: inherit;
          text-shadow: inherit;
          background-image: linear-gradient(0deg, @selection, @background-darker);
      }

      #workspaces button.active {
          background-image: linear-gradient(0deg, @purple, @selection);
      }

      #taskbar button.active {
          background-image: linear-gradient(0deg, @selection, @background-darker);
      }

      #clock {
          padding: 0 4px;
          background: @background;
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
