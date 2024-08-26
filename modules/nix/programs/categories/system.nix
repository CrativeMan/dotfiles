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
    rnix-lsp
    nixpkgs-fmt
    man-pages
    man-pages-posix
    clang-manpages
    linux-manual
    inputs.createp.packages.x86_64-linux.default
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
