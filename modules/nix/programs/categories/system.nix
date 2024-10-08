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
    nixpkgs-fmt
    man-pages
    man-pages-posix
    clang-manpages
    linux-manual
    linuxKernel.packages.linux_zen.veikk-linux-driver
    lxappearance
    ffmpeg
    gnupg
    btop
    ncdu
    sl
    unzip
    flatpak
    fastfetch
    curl
    git
    direnv
    gparted
    speedtest-go
    ntfs3g
    wget
    fzf
    xclip

  ];

}
