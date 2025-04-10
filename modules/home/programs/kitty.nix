{ ... }:

{
  programs.kitty = {
    enable = true;
    settings = {
      confirm_os_window_close = 0;
      background = "#1c1b22";
      background_opacity = "0.86";
      background_blur = 1;
    };
    #theme = "Gruvbox Dark";
    themeFile = "Duotone_Dark";
    #theme = "Hybrid";
  };
}
