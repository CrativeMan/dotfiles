{pkgs, ...}: {
  home.packages = with pkgs.kdePackages; [
    dolphin
    qtsvg
    kio-fuse
    kio-extras
  ];
}
