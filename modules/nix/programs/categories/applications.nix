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

    # art
    inkscape
    libresprite
    blender
    # darktable broken in unstable
    # gimp Not working in unstable
    video-trimmer
    unstable.aseprite
    gnome-obfuscate
    unstable.sly
    audacity
    rnote

    # communication
    signal-desktop-bin
    discord
    vesktop
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
    # planify broken in unstable
    setzer
    geogebra6
    # ladybird broken in unstable
    siyuan
    obs-studio

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
