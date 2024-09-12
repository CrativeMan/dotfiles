{ pkgs, config, ... }:

{
  imports = [
    ./bat.nix
    ./starship.nix
    ./browser.nix
    ./kitty.nix
    ./comma.nix
    #./nixvim.nix
  ];
}
