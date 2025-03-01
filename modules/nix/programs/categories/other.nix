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
    # Dev
    joycond
    jdk21_headless
    corretto21
    nodejs_18
    jdk8_headless
    python3
    libaacs
    libbluray
  ];

}

