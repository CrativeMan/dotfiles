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
    jetbrains-toolbox
    android-studio

    # art
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
    planify
    setzer
    geogebra6
    ladybird
    siyuan
    inputs.zen-browser.packages."${pkgs.system}".default

    #sonst
    junction
    keepassxc
    pika-backup
    newsflash
    gradience
    eww
    parabolic
    eyedropper
    gnome-frog
    spotify
    warp
    vlc
  ];
}
