{
  colorschemes.gruvbox.enable = true;

  globals.mapleader = " ";

  opts = {
    number = true;
    relativenumber = true;

    colorcolumn = "80";

    termguicolors = true;

    tabstop = 4;
    # shiftwidth = 4;
    # softtabstop = 4;

    splitright = true;
    splitbelow = true;

    list = true;
    listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣', extends = '→', precedes = '←' }";

    expandtab = true;

    clipboard = {
      providers.xclip.enable = true;
      register = "xclip";
    };
  };
}
