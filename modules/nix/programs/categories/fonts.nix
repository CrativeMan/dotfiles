{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    nerdfonts
    noto-fonts
    quicksand
  ];
}
