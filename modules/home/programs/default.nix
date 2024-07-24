{ pkgs, config, ... }:

{
  imports = [
    ./bat.nix
    ./nvim.nix
    ./starship.nix
    ./browser.nix
    ./kitty.nix
    ./comma.nix
  ];
}
