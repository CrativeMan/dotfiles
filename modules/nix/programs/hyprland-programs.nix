{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    (
      waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ ["-Dexperimental=true"];
      })
    )
    waybar # bar (or try eww)
    dunst # notification deamon
    libnotify
    swww # wallpaper deamon
    nwg-displays # monitor management
    wlr-randr
    #rofi-wayland # app launcher
    grim
    slurp
  ];
}
