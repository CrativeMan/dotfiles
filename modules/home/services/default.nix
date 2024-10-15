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
    path = lib.mkDefault ../../../wallpapers/nix-wallpaper-nineish-dark-gray.png;
  };

}
