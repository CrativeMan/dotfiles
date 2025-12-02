{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # coding
    vscode
    github-desktop
    scrcpy
    jetbrains.idea-community
    godot

    # art
    inkscape
    libresprite
    blender
    darktable
    gimp
    video-trimmer
    aseprite
    gnome-obfuscate
    sly
    audacity
    rnote

    # communication
    signal-desktop-bin
    discord
    vesktop
    wasistlos
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
    ladybird
    obs-studio
    anki

    #sonst
    junction
    keepassxc
    pika-backup
    newsflash
    parabolic
    eyedropper
    gnome-frog
    spotify
    warp
  ];
}
