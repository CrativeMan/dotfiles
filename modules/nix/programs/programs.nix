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
    # Nix
    rnix-lsp
    nixpkgs-fmt
    comma
    # System
    keepassxc
    pika-backup
    swww
    zoxide
    btop
    ncdu
    sl
    pipes
    cbonsai
    # Dev
    curl
    neovim
    vscode
    git
    cloc
    jdk
    gradle
    jetbrains-toolbox
    exercism
    direnv
    python3
    gaphor
    # Communication
    discord
    vesktop
    whatsapp-for-linux
    teams-for-linux
    thunderbird
    unstable.protonvpn-gui
    # Fonts
    nerdfonts
    figlet
    # Audio
    blanket
    # Video
    libsForQt5.kdenlive
    celluloid
    jellyfin
    #Office
    unstable.obsidian
    libreoffice
    texlive.combined.scheme-full
    newsflash
    zotero
    planify
    gnome-obfuscate
    unstable.klog-time-tracker
    #GNOME
    gnome.gnome-tweaks
    adw-gtk3
    gradience
    eyedropper
    gnome-frog
    unstable.resources
    gnomeExtensions.gnome-clipboard

    blender
    freecad
    darktable
    gimp
    pixelorama
    spotify
    gparted
    warp
    speedtest-go
    ntfs3g
    cmatrix
    wget
    fzf
    neofetch
    xclip
  ];
}
