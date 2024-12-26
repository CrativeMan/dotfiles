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
    path = lib.mkDefault /home/crative/.dotfiles/wallpapers/gith-creche-wallpaper.jpg;
  };

}
