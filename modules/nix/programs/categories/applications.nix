{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # coding
    vscode
    scrcpy

    # art
    inkscape
    blender
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
    obsidian
    libreoffice
    texlive.combined.scheme-full
    planify
    geogebra6
    obs-studio
    anki

    #sonst
    pika-backup
    newsflash
    parabolic
    eyedropper
    gnome-frog
    spotify
    warp
  ];
}
