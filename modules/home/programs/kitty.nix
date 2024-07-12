{ config, pkgs, ...}:

{
  programs.kitty = {
    enable = true;
    settings = {
      confirm_os_window_close = 0;
      background = "#1c1b22";
      background_opacity = "0.9";
      background_blur = 1;
    };
  };
}