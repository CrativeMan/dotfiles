{vars, ...}: {
  programs.rofi = {
    enable = true;
    font = "JetBrainsMono Nerd Font 12";
    location = "center";
    terminal = "kitty";
    theme = "${vars.self}/assets/themes/rofi-theme.rasi";
  };
}
