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
    # Dev
    curl
    neovim
    vscode
    git
    kitty
    cloc
    jdk
    gradle
    jetbrains-toolbox
    exercism
    direnv
    python3
    inputs.cproj.packages.x86_64-linux.cproj
    gaphor
    # Communication
    discord
    vesktop
    whatsapp-for-linux
    teams-for-linux
    thunderbird
    # Fonts
    nerdfonts
    # Audio
    cava
    # Video
    libsForQt5.kdenlive
    celluloid
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
    #Pentesting
    hashcat
    crunch
    aircrack-ng
    whois
    wifite2

    blender
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
