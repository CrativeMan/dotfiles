{ config, pkgs, ... }:

{
  imports = [
    ./programs.nix
    ./games.nix
    ./gaming.nix
  ];
}
