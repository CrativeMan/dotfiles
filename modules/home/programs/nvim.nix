{ config, pkgs, ...}:

{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    defaultEditor = true;
  };
}
