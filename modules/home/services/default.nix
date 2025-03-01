{ lib, ... }:

{
  imports = [
    ./sh.nix
    ./gnome.nix
    ./kdeconnect.nix
  ];
}
