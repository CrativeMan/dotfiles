{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    (
      waybar.overrideAttrs (oldAttrs: {
        mesonFlags = oldAttrs.mesonFlags ++ ["-Dexperimental=true"];
      })
    )
    dunst
    libnotify
    swww
    nwg-displays
    wlr-randr
    grim
    slurp
    swappy
    wl-clipboard
    pulseaudio
    networkmanager
    libappindicator
    pavucontrol
    playerctl
  ];
}
