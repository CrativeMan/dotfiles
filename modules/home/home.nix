{ inputs, config, pkgs, ... }:

{
  imports = [
    ./services/default.nix
    ./programs/default.nix
    ./config/default.nix
    ./home-report-changes.nix
    inputs.nix-index-database.hmModules.nix-index
  ];

  home.username = "crative";
  home.homeDirectory = "/home/crative";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
