{pkgs, ...}: {
  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
      "git-firefly"
      "log"
      "catppuccin-icons"
      "golangci-lint"
      "java"
      "kotlin"
      "toml"
      "csv"
      "env"
      "go-snippets"
      "make"
      "slint"
    ];

    extraPackages = with pkgs; [
      nil
      alejandra
      taplo # TOML formatter
    ];

    userSettings = {
      auto_install_extensions = {
        catppuccin-icons = true;
        csv = true;
        env = true;
        git-firefly = true;
        go-snippets = true;
        golangci-lint = true;
        log = true;
        make = true;
        nix = true;
        java = true;
        kotlin = true;
        toml = true;
        slint = true;
      };

      vim_mode = true;
      tab_size = 4;
      hard_tabs = true;
      autosave = "off";
      confirm_quit = true;
      relative_line_numbers = "enabled";
      load_direnv = "shell_hook";
      ui_font_size = 15;
      buffer_font_size = 14;
      formatter = "language_server";

      indent_guides = {
        enabled = true;
        coloring = "indent_aware";
      };

      # Styling
      theme = "gruvbox-crisp-themes";
      icon_theme = {
        mode = "system";
        dark = "Catppuccin Frappé";
        light = "Catppuccin Latte";
      };

      # Panels
      project_panel = {
        dock = "right";
        auto_fold_dirs = false;
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

      terminal = {
        copy_on_select = false;
        dock = "bottom";
        env = {
          TERM = "ghostty";
        };
      };

      lsp = {
        nil = {
          initialization_options = {
            formatting = {
              command = [
                "alejandra"
                "--quiet"
                "--"
              ];
            };
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
        jdtls = {
          initialization_options = {};
        };
      };

      languages = {
        Markdown = {
          formatter = "prettier";
        };
      };
    };
  };
}
