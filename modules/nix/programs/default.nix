{ config, pkgs, ... }:

{
  imports = [
    ./programs.nix
    ./games.nix
    ./steam.nix
    ./hyprland.nix
    ./direnv.nix
    ./docker.nix
    ./pentesting.nix
    ./kanata.nix
    ./flatpak.nix
  ];
}
