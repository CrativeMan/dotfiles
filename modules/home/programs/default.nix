{ pkgs, config, ... }:

{
  imports = [
    ./bat.nix
    ./starship.nix
    ./browser.nix
    ./kitty.nix
    ./comma.nix
    ./nvim.nix
    ./nixvim/nixvim.nix
    ./zed.nix
  ];
}
