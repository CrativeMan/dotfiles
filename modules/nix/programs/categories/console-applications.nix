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
    blanket
    glava
    unstable.klog-time-tracker
    cmatrix
    inputs.createp.packages.x86_64-linux.default
    inputs.tasg.packages.x86_64-linux.default
  ];

  programs.thefuck = {
    enable = true;
    alias = "fuck";
  };

}

