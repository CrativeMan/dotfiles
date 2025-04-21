{config, ...}: {
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
        ",${config.wallpaper.path}"
      ];
    };
  };
}
