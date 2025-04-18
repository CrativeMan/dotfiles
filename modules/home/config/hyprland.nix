{
  pkgs,
  config,
  ...
}: {
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;

      preload = [
        config.wallpaper.path
        config.wallpaper.path
      ];

      wallpaper = [
        "DP-1,${config.wallpaper.path}"
        "HDMI-A-1,${config.wallpaper.path}"
      ];
    };
  };

  programs.rofi = {
    enable = true;
  };

  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        modules-left = ["hyprland/workspaces" "hyprland/window"];
        modules-center = ["clock"];
        modules-right = ["pulseaudio" "pulseaudio/slider" "network" "battery" "tray"];
      };
    };
    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 12px;
        background-color: #1e1e2e;
        color: #cdd6f4;
      }

      #clock {
        color: #89b4fa;
      }

      #pulseaudio-slider slider {
        min-height: 0px;
        min-width: 0px;
        opacity: 0;
        background-image: none;
        border: none;
        box-shadow: none;
      }

      #pulseaudio-slider trough {
        min-height: 10px;
        min-width: 80px;
        border-radius: 5px;
        background-color: #313244;
      }

      #pulseaudio-slider highlight {
        min-width: 10px;
        border-radius: 5px;
        background-color: #a6e3a1;
      }
    '';
  };

  wayland.windowManager.hyprland = {
    enable = true;
    # xwayland.enable = true; # Optional, if you need XWayland support

    settings = {
      exec-once = ["${pkgs.waybar}/bin/waybar"];

      "$mod" = "SUPER";

      bind = [
        "$mod, Q, exec, kitty"
        "$mod, C, killactive,"
        "$mod, M, exit,"
        "$mod, D, exec, rofi -show drun"
        "$mod, V, togglefloating,"
        "$mod, F, fullscreen,"
        "$mod, P, pseudo,"
        "$mod, S, togglesplit,"
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      # monitor = "eDP-1,1920x1080@60,0x0,1"; # Adjust according to your monitor setup

      input = {
        kb_layout = "de"; # Sets keyboard layout to German
      };

      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
        "col.active_border" = "rgba(89b4faee)"; # Catppuccin Blue
        "col.inactive_border" = "rgba(313244aa)"; # Catppuccin Surface0
      };

      decoration = {
        rounding = 10;
        blur = {
          enabled = true;
          size = 5;
          passes = 2;
        };
      };

      animations = {
        enabled = true;
        bezier = [
          "myBezier, 0.05, 0.9, 0.1, 1.0"
        ];
        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, myBezier"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };
    };
  };
}
