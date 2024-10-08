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
      {
        key = "<Esc>";
        action = "<cmd> noh <CR>";
      }
      {
        mode = "n";
        key = "<leader>n";
        action = "<cmd> enew <CR>";
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

    opts = {
      number = true;
      relativenumber = true;
      colorcolumn = "80";
      tabstop = 2;
      shiftwidth = 2;
      softtabstop = 2;
    };


    # plugins
    plugins = {
      lualine.enable = true;
      transparent.enable = true;
      conform-nvim.enable = true;

      nvim-tree = {
        enable = true;
        disableNetrw = true;
        hijackNetrw = true;
        hijackCursor = true;
        hijackUnnamedBufferWhenOpening = false;
        syncRootWithCwd = true;
        updateFocusedFile = {
          enable = true;
          updateRoot = false;
        };
        git = {
          enable = false;
          ignore = true;
        };
        view = {
          side = "left";
          width = 30;
          preserveWindowProportions = true;
        };
        filesystemWatchers.enable = true;
        actions.openFile.resizeWindow = true;
        renderer = {
          indentMarkers.enable = false;
          icons = {
            show = {
              file = true;
              folder = true;
              folderArrow = true;
              git = false;
            };
            glyphs = {
              default = "󰈚";
              symlink = "";
              folder = {
                default = "";
                empty = "";
                emptyOpen = "";
                open = "";
                symlink = "";
                symlinkOpen = "";
                arrowOpen = "";
                arrowClosed = "";
              };
              git = {
                unstaged = "✗";
                staged = "✓";
                unmerged = "";
                renamed = "➜";
                untracked = "★";
                deleted = "";
                ignored = "◌";
              };
            };
          };
        };
      };

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
          { name = "luasnip"; }
          { name = "buffer"; }
          { name = "nvim_lua"; }
          { name = "path"; }
        ];
      };
      cmp-nvim-lsp.enable = true;
      friendly-snippets.enable = true;
      luasnip.enable = true;

      telescope = {
        enable = true;
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
  };
}
