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
  #linuxKernel.packages.linux_zen.veikk-linux-driver

  environment.systemPackages = with pkgs; [
    nixpkgs-fmt
    man-pages
    man-pages-posix
    clang-manpages
    linux-manual
    lxappearance
    ffmpeg
    gnupg
    ncdu
    sl
    unzip
    flatpak
    fastfetch
    curl
    git
    direnv
    gparted
    nixd
    speedtest-go
    ntfs3g
    wget
    fzf
    xclip
    nil
    tlp
  ];
}
