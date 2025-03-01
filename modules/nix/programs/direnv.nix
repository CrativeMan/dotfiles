#
#  Direnv
#
#  Create shell.nix
#  Create .envrc and add "use nix"
#  Add 'eval "$(direnv hook zsh)"' to .zshrc
#

{ config, lib, pkgs, ... }:

{
  programs = lib.mkIf (config.programs.zsh.enable) {
    zsh = {
      shellInit = ''
        emulate zsh -c "$(direnv hook zsh)"
      '';
    };
  };

  environment = {
    systemPackages = with pkgs; [ direnv ];
    #systemPackages = with pkgs; [ direnv nix-direnv ];
    pathsToLink = [
      "/share/nix-direnv"
    ];
  };


  nixpkgs.overlays = [
    (self: super: { nix-direnv = super.nix-direnv.override { enableFlakes = true; }; })
  ];
}
