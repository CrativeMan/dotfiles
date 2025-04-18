{...}: {
  imports = [
    #./hyprland-file.nix
    #./waybar-file.nix
    ./hyprland.nix
    ./waybar.nix
    ./hyprpaper.nix
    ./fastfetch.nix
    ./desktop-entries.nix
  ];
}
