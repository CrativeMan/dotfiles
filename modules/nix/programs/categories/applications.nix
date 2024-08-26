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
    gnome.gnome-software
    qbittorrent
    unstable.zed-editor
    vscode
    jetbrains.goland
    jetbrains.idea-ultimate
    jetbrains.clion
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
    eyedropper
    gnome-frog
    blender
    freecad
    darktable
    gimp
    spotify
    warp

  ];

}
