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
    pipes
    cbonsai
    yazi
    cloc
    unstable.gradle
    clipboard-jh
    blanket
    glava
    unstable.klog-time-tracker
    cmatrix
    alacritty
    vim
    zbar
    junction
    bc
    inputs.createp.packages.x86_64-linux.default
    inputs.gogo.packages.x86_64-linux.default
    inputs.clh.packages.x86_64-linux.default
    #inputs.nixvim.packages.x86_64-linux.default
  ];
}
