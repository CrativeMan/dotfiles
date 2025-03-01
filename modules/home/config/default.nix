{ pkgs, config, ... }:

{
  imports = [
    ./hyprland.nix
    #./waybar.nix
    ./cli-visualizer.nix
    ./fastfetch.nix
  ];
}
