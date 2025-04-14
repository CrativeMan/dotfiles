{ pkgs, inputs, ... }:
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
    unstable.klog-time-tracker
    vim
    bc
    imagemagick
    home-manager
    wakatime-cli
    inputs.gogo.packages.x86_64-linux.default
    inputs.clh.packages.x86_64-linux.default
    inputs.kmark.packages.x86_64-linux.default
  ];
}
