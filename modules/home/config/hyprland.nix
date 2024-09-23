{ config, pkgs, inputs, ... }:
let
  playerctl = "${pkgs.playerctl}/bin/playerctl";
  brightnessctl = "${pkgs.brightnessctl}/bin/brightnessctl";
  pactl = "${pkgs.pulseaudio}/bin/pactl";

in
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    xwayland.enable = true;

    settings = {
      exec-once = [
        #   "ags -b hypr"
        "hyprctl setcursor Simp1e-Adw-Dark 22"
      ];

      "$mod" = "SUPER";

      bindm = [
        # Custom bindings
        "$mod, S, exec, rofi -show drun -show-icons"

        # Example binds
        "$mod, Q, exec, kitty"
        "$mod, C, killactive"
        "$mod, M, exit"
        "$mod, F, exec, nautilus"
        "$mod, V, togglefloating"

        # Move focus with $mod + arrow keys
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"
      ];

    };
  };
}
