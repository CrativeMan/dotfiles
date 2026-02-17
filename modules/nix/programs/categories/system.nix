{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nixpkgs-fmt
    man-pages
    man-pages-posix
    clang-manpages
    # linux-manual lol broken in unstable
    lxappearance
    ffmpeg
    gnupg
    ncdu
    sl
    unzip
    flatpak
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
    nodejs
    openrgb
  ];
}
