{...}: {
  imports = [
    ./categories/programs.nix
    ./steam.nix
    ./docker.nix
    ./flatpak.nix
  ];

  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "ghostty";
  };

  gaming.enable = true;
}
