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
        {
          monitor = "DP-1";
          path = vars.wallpaper.path;
        }
        {
          monitor = "HDMI-A-1";
          path = vars.wallpaper.path;
        }
        {
          monitor = "";
          path = vars.wallpaper.path;
        }
      ];
    };
  };
}
