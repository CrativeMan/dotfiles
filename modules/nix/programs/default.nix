{ config, pkgs, ... }:

{
  imports = [
    ./programs.nix
    ./games.nix
    ./steam.nix
  ];
}
