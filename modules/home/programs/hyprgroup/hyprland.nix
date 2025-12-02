{pkgs, ...}: {
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
    ];
  };

  home.packages = with pkgs; [
    libnotify
    swww
    nwg-displays
    wlr-randr
    grim
    slurp
    swappy
    wl-clipboard
    pulseaudio
    networkmanager
    libappindicator
    pavucontrol
    playerctl
    blueman
    brightnessctl
    hyprpolkitagent
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      exec-once = [
        "mkdir -p ~/Pictures/Screenshots/hypr"
        "blueman-applet"
        "systemctl --user start hyprpolkitagent"
      ];

      "$mod" = "SUPER";

      bind = [
        "$mod, Q, exec, ${pkgs.ghostty}/bin/ghostty"
        "$mod, C, killactive,"
        "$mod, M, exit,"
        "$mod, D, exec, pgrep wofi >/dev/null 2>&1 && killall wofi || ${pkgs.wofi}/bin/wofi --show drun --location=top -y 15"
        "$mod, V, togglefloating,"
        "$mod, F, fullscreen,"
        "$mod, Ö, exec, ${pkgs.hyprlock}/bin/hyprlock"

        # Screenshot
        "$mod, P, exec, ~/.config/hypr/scripts/screenshot_full.sh"
        "$mod SHIFT, P, exec, ~/.config/hypr/scripts/screenshot_area.sh"
        "$mod CTRL, P, exec, ~/.config/hypr/scripts/screenshot_edit.sh"
        "$mod, S, togglesplit,"

        "$mod, h, movefocus, l"
        "$mod, l, movefocus, r"
        "$mod, k, movefocus, u"
        "$mod, j, movefocus, d"

        "$mod SHIFT, h, movewindow, l"
        "$mod SHIFT, l, movewindow, r"
        "$mod SHIFT, j, movewindow, d"
        "$mod SHIFT, k, movewindow, u"

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      bindl = [
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"

        ", XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ", XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

        ", XF86MonBrightnessDown, exec, brightnessctl s 10%-"
        ", XF86MonBrightnessUp, exec, brightnessctl s +10%"
      ];

      monitor = [
        "DP-1, preferred, 0x0, 1"
        "HDMI-A-1, preferred, 1920x0, 1"
        ", preferred, auto, 1"
      ];

      windowrule = [
        "float,title:engine"
      ];

      input = {
        kb_layout = "de";
        touchpad = {
          natural_scroll = true;
        };
      };

      general = {
        gaps_in = 8;
        gaps_out = 8;
        border_size = 1;
        "col.active_border" = "0xd8cab8ff";
        "col.inactive_border" = "0xac82e9ff";
      };

      decoration = {
        rounding = 0;
        rounding_power = 2;

        active_opacity = 0.9;
        inactive_opacity = 0.8;
      };

      animations = {
        enabled = true;

        bezier = [
          "easeOutQuint,0.23,1,0.32,1"
          "easeInOutCubic,0.65,0.05,0.36,1"
          "linear,0,0,1,1"
          "almostLinear,0.5,0.5,0.75,1.0"
          "quick,0.15,0,0.1,1"
        ];

        animation = [
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 1.94, almostLinear, fade"
          "workspacesIn, 1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.94, almostLinear, fade"
        ];
      };
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };
    };
  };
}
