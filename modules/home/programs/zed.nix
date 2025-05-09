{
  pkgs,
  lib,
  ...
}: {
  programs.zed-editor = {
    enable = true;
    package = pkgs.zed-editor;

    extensions = [
      "csv"
      "env"
      "make"
      "nix"
      "git-firefly"
      "log"
      "catppuccin-icons"
      "rose-pine-theme"
      "scss"
      "golangci-lint"
    ];
    extraPackages = with pkgs; [
      nil
      alejandra
    ];
    userSettings.auto_install_extensions = true;

    userSettings = {
      tab_size = 4;
      hard_tabs = true;
      autosave = "off";
      confirm_quit = true;
      relative_line_numbers = false;
      load_direnv = "shell_hook";
      ui_font_size = lib.mkForce 15;
      font_size = lib.mkForce 14;

      indent_guides = {
        enabled = true;
        coloring = "indent_aware";
      };

      formatter = "language_server";

      # Styling
      theme = "Rosé Pine";
      icon_theme = {
        mode = "system";
        dark = "Catppuccin Frappé";
        light = "Catppuccin Latte";
      };

      # Panels
      project_panel = {
        dock = "right";
      };
      outline_panel = {
        dock = "left";
      };
      collaboration_panel = {
        dock = "left";
      };
      notification_panel = {
        dock = "left";
      };
      chat_panel = {
        dock = "left";
      };

      terminal = {
        copy_on_select = false;
        dock = "bottom";
        env = {
          TERM = "ghostty";
        };
      };

      lsp = {
        nix = {
          binary = {
            path_lookup = true;
          };
        };
        nil = {
          initialization_options = {
            formatting.command = ["alejandra" "--quiet" "--"];
          };
        };
        gopls = {
          initialization_options = {
            hints = {
              assignVariableTypes = true;
              compositeLiteralFields = true;
              compositeLiteralTypes = true;
              constantValues = true;
              functionTypeParameters = true;
              parameterNames = true;
              rangeVariableTypes = true;
            };
          };
        };
      };

      languages = {
        Markdown = {
          formatter = "prettier";
        };
        JSON = {
          formatter = "prettier";
        };
        TOML = {
          formatter = "taplo";
        };
      };
    };
  };
}
