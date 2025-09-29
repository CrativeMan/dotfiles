{
  pkgs,
  inputs,
  ...
}: {
  nixpkgs.overlays = [
    (final: prev: {
      unstable = import inputs.nixpkgs-unstable {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    })
  ];

  environment.systemPackages = with pkgs; [
    # coding
    unstable.vscode
    github-desktop
    scrcpy
    jetbrains.idea-community
    godot

    # art
    inkscape
    libresprite
    blender
    # darktable broken in unstable
    gimp
    video-trimmer
    unstable.aseprite
    gnome-obfuscate
    unstable.sly
    audacity
    rnote

    # communication
    signal-desktop-bin
    discord
    # vesktop
    whatsapp-for-linux
    teams-for-linux
    thunderbird
    telegram-desktop

    # work
    hieroglyphic
    obsidian
    logseq
    libreoffice
    texlive.combined.scheme-full
    zotero
    tor-browser
    planify
    setzer
    geogebra6
    # ladybird broken in unstable
    obs-studio
    anki

    #sonst
    junction
    keepassxc
    pika-backup
    newsflash
    gradience
    parabolic
    eyedropper
    gnome-frog
    spotify
    warp
  ];
}
