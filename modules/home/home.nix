{...}: {
  imports = [
    ./programs/default.nix
    ./config/default.nix
    ./home-report-changes.nix
  ];

  home.username = "crative";
  home.homeDirectory = "/home/crative";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  wallpaper = {
    enable = true;
  };
}
