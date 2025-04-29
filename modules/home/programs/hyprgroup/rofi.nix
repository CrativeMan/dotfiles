{
  pkgs,
  vars,
  ...
}: {
  programs.rofi = {
    enable = true;
    font = "JetBrainsMono Nerd Font 12";
    location = "center";
    terminal = "${pkgs.ghostty}/bin/ghostty";
    theme = "${vars.self}/assets/themes/rofi-theme.rasi";
  };
}
