{ config, pkgs, ... }:

{
  imports = [
    ./programs.nix
    ./games.nix
  ];
}
