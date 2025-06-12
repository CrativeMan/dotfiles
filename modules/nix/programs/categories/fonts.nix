{pkgs, ...}: {
  fonts.packages = with pkgs; [
    nerd-fonts.zed-mono
    nerd-fonts.ubuntu
    quicksand
    font-awesome
    maple-mono.Normal-NF
  ];
}
