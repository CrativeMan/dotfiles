{ config, pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    (waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
      })
    )
    waybar # bar (or try eww)
    dunst # notification deamon
    libnotify
    swww # wallpaper deamon
    nwg-displays # monitor management
    rofi-wayland # app launcher
    wofi
  ];
}
