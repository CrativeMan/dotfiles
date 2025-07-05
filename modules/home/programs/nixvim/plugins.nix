{
  inputs,
  pkgs,
  ...
}: {
  programs.nixvim = {
    plugins = {
      lualine.enable = true;
      transparent.enable = true;
      conform-nvim.enable = true;
      direnv.enable = true;
      markdown-preview.enable = true;
      web-devicons.enable = true;

      typescript-tools = {
        enable = true;
      };

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
          java_language_server.enable = true;
          nixd.enable = true;
          gopls.enable = true;
          rust_analyzer = {
            enable = true;
            installRustc = true;
            installCargo = true;
          };
        };
      };

      cmp = {
        enable = true;
        autoEnableSources = true;
        settings = {
          sources = [
            {name = "nvim_lsp";}
            {name = "luasnip";}
            {name = "buffer";}
            {name = "nvim_lua";}
            {name = "path";}
          ];
        };
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
          cpp
        ];
      };
    };
  };
}
