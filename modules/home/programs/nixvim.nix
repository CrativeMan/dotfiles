{ inputs, pkgs, ... }:

{
  imports = [ inputs.nixvim.homeManagerModules.nixvim ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    enableMan = true;
    viAlias = true;
    vimAlias = true;

    globals.mapleader = " ";

    colorschemes.gruvbox = {
      enable = true;
    };

    keymaps = [
      # open nvim 
      {
        mode = "n";
        key = "<C-n>";
        action = "<cmd> NvimTreeToggle <CR>";
      }
      {
        mode = "n";
        key = "<C-c>";
        action = "<cmd> %y+ <CR>";
      }

      # navigation
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w>h";
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w>j";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w>k";
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w>l";
      }
    ];

    # plugins
    plugins = {
      lualine.enable = true;
      nvim-tree.enable = true;
      transparent.enable = true;

      conform-nvim.enable = true;

      lsp = {
        enable = true;
        servers = {
          clangd.enable = true;
          java-language-server.enable = true;
          nixd.enable = true;
          gopls.enable = true;
        };
      };

      cmp = {
        enable = true;
        autoEnableSources = true;
        settings.sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];
      };
      cmp-nvim-lsp.enable = true;
      friendly-snippets.enable = true;
      luasnip.enable = true;

      telescope = {
        enable = true;
        # map = "<leader>ff" to run telescope find_files
        keymaps = {
          "<leader>ff" = "find_files";
        };
      };

      treesitter = {
        enable = true;
        grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
          bash
          json
          lua
          make
          markdown
          nix
          regex
          toml
          vim
          vimdoc
          xml
          yaml
          java
          go
          c
        ];
      };

    };
    opts = {
      number = true;
      relativenumber = true;
      colorcolumn = "80";
    };
  };
}
