{ config, pkgs, inputs, ... }:
let

in
{
  imports = [
    ./system.nix
    ./fonts.nix
    ./applications.nix
    ./console-applications.nix
    ./other.nix
  ];

  environment.systemPackages = with pkgs; [

  ];
}
