{ pkgs, config, ... }:

{
  imports = [
    ./bat.nix
    ./starship.nix
    ./browser.nix
    ./kitty.nix
    ./comma.nix
    #x./nvim.nix
    ./nixvim.nix
  ];
}
