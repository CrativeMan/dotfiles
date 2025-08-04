{vars, ...}: {
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;

      preload = [
        vars.wallpaper.path
      ];

      wallpaper = [
        "DP-1,${vars.wallpaper.path}"
        "HDMI-A-1,${vars.wallpaper.path}"
        ",${vars.wallpaper.path}"
      ];
    };
  };
}
