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
    # terminals
    unstable.ghostty
    alacritty

    # coding
    unstable.vscode
    github-desktop
    sublime4
    godot_4
    mysql-workbench
    jetbrains-toolbox
    android-studio
    zed-editor
    
    # art
    glaxnimate
    inkscape
    libresprite
    blender
    darktable
    gimp
    video-trimmer
    unstable.aseprite
    gnome-obfuscate
    unstable.sly
    rnote

    # communication
    signal-desktop
    discord
    whatsapp-for-linux
    teams-for-linux
    thunderbird
    telegram-desktop

    # work
    hieroglyphic
    unstable.obsidian
    libreoffice
    texlive.combined.scheme-full
    zotero
    planify
    setzer
    geogebra6
    ladybird

    #sonst
    keepassxc
    pika-backup
    kdenlive
    newsflash
    gradience
    unstable.parabolic
    eyedropper
    gnome-frog
    spotify
    warp
    vlc
  ];
}
