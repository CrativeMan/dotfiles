{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    neovim
    vscode
    fzf
    git
    discord
    neofetch
    xclip
    nerdfonts
  ];
}
