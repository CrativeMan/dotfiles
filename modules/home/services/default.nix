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
    path = lib.mkDefault ../../../wallpapers/wallhaven-yx6e9l_3840x2160.png;
  };

}
