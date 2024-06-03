{ config, pkgs, inputs, ... }:

{
    nixpkgs.overlays = [
    (final: prev: {
      unstable = import inputs.nixpkgs-unstable {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    })
  ]; 

  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    libremines
    prismlauncher
    unstable.steam
    unstable.cartridges
    unstable.heroic
  ];
}
