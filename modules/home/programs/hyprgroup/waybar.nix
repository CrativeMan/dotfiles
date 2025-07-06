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
          "hyprland/workspaces"
          "sway/workspaces"
        ];
        modules-center = [
          "custom/applauncher"
        ];
        modules-right = [
          "network"
          "battery"
          "pulseaudio"
          "tray"
          "clock"
        ];
        "hyprland/workspaces" = {
          disable-scroll = true;
          all-outputs = false;
          tooltip = false;
        };
        "sway/workspaces" = {
          disable-scroll = true;
          all-outputs = false;
          tooltip = false;
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

    # settings = {
    #   mainBar = {
    #     layer = "top";
    #     position = "top";
    #     height = 30;
    #     spacing = 7;

    #     output = ["*"];

    #     modules-left = ["custom/launcher" "custom/power" "cpu" "memory" "network"];
    #     modules-center = ["hyprland/workspaces" "clock"];
    #     modules-right = ["tray" "battery" "bluetooth" "pulseaudio" "custom/shutdown"];

    #     "custom/launcher" = {
    #       format = "[  ]";
    #       on-click = "rofi -show drun";
    #       on-click-right = "killall rofi";
    #       tooltip = false;
    #     };

    #     "custom/power" = {
    #       format = "[PWR:{}]";
    #       tooltip = false;
    #       interval = 10;
    #       exec = "powerprofilesctl get";
    #       on-click = "/home/${vars.user}/.config/waybar/scripts/powermode.sh";
    #     };

    #     "hyprland/workspaces" = {
    #       format = "{icon}";
    #       on-scroll-up = "hyprctl dispatch workspace e+1";
    #       on-scroll-down = "hyprctl dispatch workspace e-1";
    #     };

    #     "clock" = {
    #       format = "[{:%H:%M %d/%m/%Y}]";
    #       tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
    #       interval = 60;
    #       on-click = "gnome-calendar";
    #     };

    #     "cpu" = {
    #       on-click = "${pkgs.ghostty}/bin/ghostty -e ${pkgs.btop}/bin/btop";
    #       interval = 10;
    #       format = "[CPU:{usage}%]";
    #       states = {
    #         critical = 90;
    #       };
    #     };

    #     "memory" = {
    #       on-click = "${pkgs.ghostty}/bin/ghostty -e ${pkgs.btop}/bin/btop";
    #       interval = 10;
    #       format = "[MEM:{used}%]";
    #       states = {
    #         critical = 80;
    #       };
    #     };

    #     "bluetooth" = {
    #       format = "[BL:{status}]";
    #       format-connected = "[BL:{device_alias}]";
    #       format-connected-battery = "[BL:{device_alias} ({device_battery_percentage}%)]";
    #       format-off = "[BL:Off]";
    #       format-disabled = "[BL:Disabled]";
    #       tooltip-format = "{device_alias} - {device_address}";
    #       tooltip-format-connected = "{device_alias} - {device_address}\nBattery: {device_battery_percentage}%";
    #       on-click = "blueman-manager";
    #     };

    #     "pulseaudio" = {
    #       scroll-step = 5;
    #       max-volume = 150;
    #       format = "[VOL:{volume}%]";
    #       on-click = "pavucontrol";
    #     };

    #     "network" = {
    #       format-wifi = "[WIFI {bandwidthDownBits}]";
    #       format-ethernet = "[ETHN {bandwidthDownBits}]";
    #       format-disconnected = "[⚠NONE⚠]";
    #       tooltip-format = "{ifname}: {ipaddr}/{cidr}";
    #     };

    #     "battery" = {
    #       format = "[BAT:{capacity}%]";
    #       interval = 60;
    #       states = {
    #         warning = 30;
    #         critical = 15;
    #       };
    #       tooltip = false;
    #     };

    #     "tray" = {
    #       icon-size = 21;
    #       spacing = 10;
    #       tooltip = false;
    #     };

    #     "custom/shutdown" = {
    #       format = "[⏻ ]";
    #       tooltip = "Shutdown";
    #       on-click = "/home/${vars.user}/.config/waybar/scripts/shutdown_prompt.sh";
    #       interval = 86400;
    #     };
    #   };
    # };

    # style = ''
    #     @define-color rosewater #f5e0dc;
    #     @define-color flamingo #f2cdcd;
    #     @define-color pink #f5c2e7;
    #     @define-color mauve #cba6f7;
    #     @define-color red #f38ba8;
    #     @define-color maroon #eba0ac;
    #     @define-color peach #fab387;
    #     @define-color yellow #f9e2af;
    #     @define-color green #a6e3a1;
    #     @define-color teal #94e2d5;
    #     @define-color sky #89dceb;
    #     @define-color sapphire #74c7ec;
    #     @define-color blue #89b4fa;
    #     @define-color lavender #b4befe;
    #     @define-color text #cdd6f4;
    #     @define-color subtext1 #bac2de;
    #     @define-color subtext0 #a6adc8;
    #     @define-color overlay2 #9399b2;
    #     @define-color overlay1 #7f849c;
    #     @define-color overlay0 #6c7086;
    #     @define-color surface2 #585b70;
    #     @define-color surface1 #45475a;
    #     @define-color surface0 #313244;
    #     @define-color base #1e1e2e;
    #     @define-color mantle #181825;
    #     @define-color crust #11111b;

    #     * {
    #       font-family: FantasqueSansMono Nerd Font;
    #       font-size: 14px;
    #       min-height: 0;
    #   }

    #   #waybar {
    #       background-color: @surface0;
    #       color: @text;
    #       margin: 5px 5px;
    #   }

    #   #workspaces {
    #       border-radius: 1rem;
    #       margin: 5px;
    #       background-color: @surface0;
    #       margin-left: 1rem;
    #   }

    #   #workspaces button {
    #       color: @lavender;
    #       border-radius: 1rem;
    #       padding: 0.4rem;
    #   }

    #   #workspaces button.active {
    #       color: @sky;
    #       border-radius: 1rem;
    #   }

    #   #cpu,
    #   #memory,
    #   #network,
    #   #bluetooth,
    #   #battery,
    #   #pulseaudio,
    #   #clock,
    #   #custom-launcher,
    #   #custom-power,
    #   #custom-shutdown {
    #     background-color: @surface0;
    #     border: 1px solid @overlay0;
    #     border-radius: 0.2rem;
    #     padding: 0.2rem 0.5rem;
    #     margin: 4px 6px;
    #     transition: background-color 0.2s, border-color 0.2s;
    #   }

    #   #workspaces button:hover {
    #     background-color: @surface1;
    #     color: @text;
    #   }

    #   #tray:hover,
    #   #cpu:hover,
    #   #memory:hover,
    #   #network:hover,
    #   #bluetooth:hover,
    #   #battery:hover,
    #   #pulseaudio:hover,
    #   #clock:hover,
    #   #custom-launcher:hover,
    #   #custom-power:hover,
    #   #custom-shutdown:hover {
    #     background-color: @surface1;
    #     border-color: @overlay1;
    #   }

    #   #clock {
    #       color: @blue;
    #   }

    #   #battery {
    #       color: @green;
    #   }

    #   #battery.charging {
    #       color: @green;
    #   }

    #   #battery.warning:not(.charging) {
    #       color: @red;
    #   }

    #   #custom-shutdown {
    #       color: @red;
    #   }
    # '';
  };
}
