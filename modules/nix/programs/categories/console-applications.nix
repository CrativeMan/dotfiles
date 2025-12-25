{
  pkgs,
  inputs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    pipes
    cbonsai
    yazi
    vitetris
    gradle_9
    clipboard-jh
    vim
    bc
    imagemagick
    home-manager
    display3d
    tokei
    nh
    inputs.gogo.packages.x86_64-linux.default
    inputs.clh.packages.x86_64-linux.default
    inputs.kmark.packages.x86_64-linux.default
  ];
}
