{...}: {
  programs.hyfetch = {
    enable = true;
    settings = {
      preset = "transgender";
      mode = "rgb";
      light_dark = "dark";
      lightness = 0.80;
      color_align = {
        mode = "horizontal";
        fore_back = null;
      };
      backend = "neofetch";
    };
  };
}
