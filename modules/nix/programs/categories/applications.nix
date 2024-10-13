{ config, pkgs, inputs, ... }:
let

in
{
  nixpkgs.overlays = [
    (final: prev: {
      unstable = import inputs.nixpkgs-unstable {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    })
  ];

  environment.systemPackages = with pkgs; [
    keepassxc
    pika-backup
    qbittorrent
    unstable.zed-editor
    umlet
    rquickshare
    vscode
    jetbrains-toolbox
    signal-desktop
    #jetbrains.idea-ultimate
    discord
    unstable.vesktop
    whatsapp-for-linux
    teams-for-linux
    thunderbird
    celluloid
    unstable.obsidian
    libreoffice
    texlive.combined.scheme-full
    newsflash
    zotero
    planify
    gnome-obfuscate
    libresprite
    setzer
    gradience
    unstable.parabolic
    eyedropper
    gnome-frog
    blender
    darktable
    gimp
    spotify
    warp
    appflowy
    veikk-linux-driver-gui
    telegram-desktop
    godot_4
  ];

}
