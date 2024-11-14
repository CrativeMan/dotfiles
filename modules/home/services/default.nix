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
    path = lib.mkDefault ../../../wallpapers/a_motorcycle_parked_outside_a_restaurant.jpg;
  };

}
