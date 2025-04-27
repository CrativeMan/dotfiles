{
  pkgs,
  vars,
  ...
}: {
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
        height = 35;
        spacing = 7;

        output = ["*"];

        modules-left = ["custom/launcher" "hyprland/workspaces"];
        modules-center = ["clock"];
        modules-right = ["tray" "cpu" "memory" "battery" "network" "bluetooth" "pulseaudio" "custom/shutdown"];

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
          format = "CPU:{usage}%";
          states = {
            critical = 90;
          };
        };

        "memory" = {
          interval = 5;
          format = "MEM:{used}%";
          states = {
            critical = 80;
          };
        };

        "bluetooth" = {
          format = "BL:{status}";
          format-connected = "BL:{device_alias}";
          format-connected-battery = "BL:{device_alias} ({device_battery_percentage}%)";
          format-off = "BL:Off";
          format-disabled = "BL:Disabled";
          tooltip-format = "{device_alias} - {device_address}";
          tooltip-format-connected = "{device_alias} - {device_address}\nBattery: {device_battery_percentage}%";
          on-click = "blueman-manager";
        };

        "pulseaudio" = {
          scroll-step = 5;
          max-volume = 150;
          format = "VOL:{volume}%";
          on-click = "pavucontrol";
        };

        "network" = {
          format-wifi = "WIFI {bandwidthDownBits}";
          format-ethernet = "ETHN {bandwidthDownBits}";
          format-disconnected = "⚠NONE⚠";
          tooltip-format = "{ifname}: {ipaddr}/{cidr}";
        };

        "battery" = {
          format = "BAT:{capacity}%";
          interval = 5;
          states = {
            warning = 30;
            critical = 15;
          };
          tooltip = false;
        };

        "tray" = {
          icon-size = 21;
          spacing = 10;
          tooltip = false;
        };

        "custom-shutdown" = {
          format = "⏻";
          tooltip = "Shutdown";
          on-click = "/home/${vars.user}/.config/waybar/scripts/shutdown_prompt.sh";
          interval = 86400;
        };
      };
    };

    style = ''
      @define-color rosewater #f5e0dc;
      @define-color flamingo #f2cdcd;
      @define-color pink #f5c2e7;
      @define-color mauve #cba6f7;
      @define-color red #f38ba8;
      @define-color maroon #eba0ac;
      @define-color peach #fab387;
      @define-color yellow #f9e2af;
      @define-color green #a6e3a1;
      @define-color teal #94e2d5;
      @define-color sky #89dceb;
      @define-color sapphire #74c7ec;
      @define-color blue #89b4fa;
      @define-color lavender #b4befe;
      @define-color text #cdd6f4;
      @define-color subtext1 #bac2de;
      @define-color subtext0 #a6adc8;
      @define-color overlay2 #9399b2;
      @define-color overlay1 #7f849c;
      @define-color overlay0 #6c7086;
      @define-color surface2 #585b70;
      @define-color surface1 #45475a;
      @define-color surface0 #313244;
      @define-color base #1e1e2e;
      @define-color mantle #181825;
      @define-color crust #11111b;

      * {
        font-family: FantasqueSansMono Nerd Font;
        font-size: 17px;
        min-height: 0;
      }

      #waybar {
        background-color: @surface0;
        color: @text;
        margin: 5px 5px;
      }

      #workspaces {
        border-radius: 1rem;
        margin: 5px;
        background-color: @surface0;
        margin-left: 1rem;
      }

      #workspaces button {
        color: @lavender;
        border-radius: 1rem;
        padding: 0.4rem;
      }

      #workspaces button.active {
        color: @sky;
        border-radius: 1rem;
      }

      #workspaces button:hover {
        color: @sapphire;
        border-radius: 1rem;
      }

      #tray,
      #cpu,
      #memory,
      #network,
      #bluetooth,
      #clock,
      #battery,
      #pulseaudio,
      #custom-shutdown {
        background-color: @surface0;
        padding: 0.5rem 1rem;
        margin: 5px 0;
      }

      #clock {
        color: @blue;
        border-radius: 0px 1rem 1rem 0px;
        margin-right: 1rem;
      }

      #battery {
        color: @green;
      }

      #battery.charging {
        color: @green;
      }

      #battery.warning:not(.charging) {
        color: @red;
      }

      #pulseaudio {
        color: @maroon;
        border-radius: 1rem 0px 0px 1rem;
        margin-left: 1rem;
      }

      #custom-shutdown {
          margin-right: 1rem;
          border-radius: 0px 1rem 1rem 0px;
          color: @red;
      }

      #tray {
        margin-right: 1rem;
        border-radius: 1rem;
      }
    '';
  };

  home.packages = with pkgs; [
    pulseaudio
    networkmanager
    libappindicator
    libnotify
  ];

  home.file."/home/${vars.user}/.config/waybar/scripts/shutdown_prompt.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash

      choice=$(echo -e "No\nYes" | rofi -dmenu -p "Shutdown?")

      if [[ "$choice" == "Yes" ]]; then
        systemctl poweroff
      fi
    '';
  };
}
