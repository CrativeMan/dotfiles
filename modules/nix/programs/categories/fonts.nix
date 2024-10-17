{ config, pkgs, inputs, ... }:
let

in
{
  fonts.packages = with pkgs; [
    nerdfonts
    noto-fonts
    quicksand
  ];
}

