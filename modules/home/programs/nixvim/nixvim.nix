{ inputs, ... }:

{
  imports = [ inputs.nixvim.homeManagerModules.nixvim ./keymaps.nix ./plugins.nix ];

  programs.nixvim = {
    enable = false;
    defaultEditor = false;
    enableMan = true;
    viAlias = true;
    vimAlias = true;

    globals.mapleader = " ";

    colorschemes.gruvbox = {
      enable = true;
    };

    opts = {
      number = true;
      relativenumber = true;
      colorcolumn = "80";
      tabstop = 2;
      shiftwidth = 2;
      softtabstop = 2;
    };
  };
}
