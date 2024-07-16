{ config, pkgs, ... }:

{
  imports = [
    ./services/default.nix
    ./programs/default.nix
    ./config/default.nix
  ];
  
  home.username = "crative";
  home.homeDirectory = "/home/crative";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
