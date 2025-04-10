{ config, pkgs, ... }:

{
  imports = [
    ./categories/programs.nix
    ./games.nix
    ./steam.nix
    ./hyprland.nix
    ./direnv.nix
    ./docker.nix
    ./kanata.nix
    ./flatpak.nix
  ];  
}
