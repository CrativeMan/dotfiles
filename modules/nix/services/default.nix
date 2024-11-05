{ config, pkgs, ... }:

{
  imports = [
    ./syncthing.nix
    ./virtualisation.nix  
  ];
}
