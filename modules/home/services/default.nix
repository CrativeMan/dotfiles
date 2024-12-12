{ lib, ... }:

{
  imports = [
    ./sh.nix
    ./gnome.nix
    ./wallpaper.nix
    ./kdeconnect.nix
  ];

  wallpaper = {
    enable = lib.mkDefault true;
    path = lib.mkDefault ../../../wallpapers/backpacker-7628303_1920.jpg;
  };

}
