{ config, pkgs, ... }:

{
  home.file.".config/vis/config".text = ''
    colors.scheme=purple,pink
    visualizer.spectrum.color.scheme=blue
    visualizer.spectrum.bar.width=1

    visualizer.spectrum.top.margin=0.30
    visualizer.spectrum.bottom.margin=0.30
    visualizer.spectrum.left.margin=0.0
    visualizer.spectrum.right.margin=0.0
  '';

  home.file.".config/vis/colors/purple".text = ''
    #460E50
    #641372
    #811994
    #C327E0
  '';

  home.file.".config/vis/colors/pink".text = ''
    #CA49A8
    #F559CC
    #EC55C4
  '';
}
