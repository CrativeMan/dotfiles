{pkgs, ...}: {
  programs.rofi = {
    enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
    ];
  };

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true; # Optional, if you need XWayland support

    settings = {
      exec-once = [
        "mkdir -p ~/Pictures/Screenshots/hypr"
        "waybar"
        "hyprpaper"
      ];

      "$mod" = "SUPER";

      bind = [
        "$mod, Q, exec, kitty"
        "$mod, C, killactive,"
        "$mod, M, exit,"
        "$mod, D, exec, rofi -show drun"
        "$mod, V, togglefloating,"
        "$mod, F, fullscreen,"

        # Screenshot
        "$mod, P, exec, ${pkgs.grim}/bin/grim ~/Pictures/Screenshots/hypr/screenshot_$(date +%s).png"
        "$mod+SHIFT, P, exec, ${pkgs.grim}/bin/grim -g \"$(slurp)\" ~/Pictures/Screenshots/hypr/screenshot_$(date +%s).png"
        "$mod+CTRL, P, exec, bash -c '${pkgs.grim}/bin/grim -g \"$(slurp)\" - | ${pkgs.swappy}/bin/swappy -f -'"
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

      # Add your monitor configs - this is important
      monitor = [
        "DP-1,preferred,0x0,1"
        "HDMI-A-1,preferred,auto,1"
        ",preferred,auto,1" # Fallback for any connected monitor
      ];

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
