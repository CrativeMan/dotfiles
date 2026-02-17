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
      "gruvbox-material"
      "zig"
      "dockerfile"
      "sql"
    ];

    extraPackages = with pkgs; [
      nil
      alejandra
      taplo
      nodePackages.prettier
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
        zig = true;
        dockerfile = true;
        sql = true;
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

      scroll_beyond_last_line = "one_page";
      vertical_scroll_margin = 5;

      git = {
        inline_blame = {
          enabled = true;
          delay_ms = 600;
        };
      };

      indent_guides = {
        enabled = true;
        coloring = "indent_aware";
      };

      inlay_hints = {
        enabled = true;
        show_type_hints = true;
        show_parameter_hints = true;
        show_other_hints = true;
      };

      # Styling
      theme = "gruvbox-material";
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
              command = ["alejandra" "--quiet" "--"];
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

        # Zig Language Server
        zls = {
          initialization_options = {
            enable_snippets = true;
            enable_argument_placeholders = true;
            enable_build_on_save = true;
            enable_autofix = true;
            warn_style = true;
            highlight_global_var_declarations = true;
          };
        };
      };

      languages = {
        Markdown = {
          formatter = "prettier";
          soft_wrap = "editor_width";
        };
        Zig = {
          tab_size = 4;
          hard_tabs = false; # Zig uses spaces by convention
          formatter = "language_server";
        };
        Go = {
          hard_tabs = true; # gofmt uses tabs
          formatter = "language_server";
        };
        Nix = {
          tab_size = 2;
          hard_tabs = false;
          formatter = "language_server";
        };
        TOML = {
          formatter = "language_server";
        };
        JSON = {
          tab_size = 2;
          hard_tabs = false;
        };
      };
    };
  };
}
