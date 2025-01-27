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
    unstable.ghostty
    keepassxc
    pika-backup
    qbittorrent
    unstable.zed-editor
    hieroglyphic
    inkscape
    umlet
    icon-library
    glaxnimate
    arc-browser
    rquickshare
    unstable.vscode
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
    gnome-builder
    libreoffice
    kdenlive
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
    drawio
    appflowy
    github-desktop
    sublime4
    telegram-desktop
    godot_4
    vlc
    unstable.sly
    rnote
    geogebra6
    video-trimmer
    mysql-workbench
    unstable.aseprite
    veikk-linux-driver-gui
  ];
    #veikk-linux-driver-gui
}
