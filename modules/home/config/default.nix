{ pkgs, config, ...}:

{
  imports = [
    ./hyprland.nix
    ./waybar.nix
  ];
}
