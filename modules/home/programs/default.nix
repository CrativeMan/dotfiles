{ pkgs, config, ...}:

{
  imports = [
    ./bat.nix
    ./nvim.nix
  ];
}
