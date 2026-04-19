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
      "rust"
    ];

    extraPackages = with pkgs; [
      nil
      alejandra
      taplo
      rust-analyzer
      gopls
      zls
      prettier
      clang-tools # clangd + clang-format
    ];

    userSettings = {
      vim_mode = true;
      tab_size = 4;
      hard_tabs = true;
      autosave = "off";
      confirm_quit = true;
      relative_line_numbers = "enabled";
      load_direnv = "shell_hook";
      ui_font_size = 13;
      buffer_font_size = 11;
      buffer_font_family = "JetBrains Mono";
      buffer_font_features = {
        calt = true; # contextual alternates / ligatures
        liga = true;
      };
      ui_font_family = "JetBrains Mono";
      formatter = "language_server";

      cursor_blink = false;
      show_edit_predictions = false;

      wrap_guides = [100];
      seed_search_query_from_cursor = "always";

      file_scan_exclusions = [
        "**/.git"
        "**/.direnv"
        "**/target"
        "**/result"
        "**/.cache"
        "**/build"
        "**/.build"
      ];

      telemetry = {
        diagnostics = false;
        metrics = false;
      };

      scrollbar = {
        show = "auto";
        git_diff = true;
        search_results = true;
        selected_symbol = true;
        diagnostics = "all";
      };

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
      theme = {
        mode = "system";
        dark = "Catppuccin Frappé";
        light = "Catppuccin Latte";
      };
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
        font_family = "JetBrains Mono";
        font_size = 11;
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

        rust-analyzer = {
          initialization_options = {
            check = {
              command = "clippy";
              features = "all";
            };
            cargo = {
              allFeatures = true;
            };
            procMacro = {
              enable = true;
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
          initialization_options = {
            settings = {
              java = {
                format = {
                  enabled = true;
                };
                saveActions = {
                  organizeImports = true;
                };
                completion = {
                  importOrder = ["java" "javax" "org" "com"];
                  filteredTypes = ["com.sun.*" "sun.*" "jdk.*"];
                };
                import = {
                  gradle.enabled = true;
                  maven.enabled = true;
                };
                inlayHints = {
                  parameterNames.enabled = "all";
                };
                referencesCodeLens.enabled = true;
                implementationsCodeLens.enabled = true;
                signatureHelp.enabled = true;
              };
            };
          };
        };

        clangd = {
          initialization_options = {
            clangdFileStatus = true;
            usePlaceholders = true;
            completeUnimported = true;
            semanticHighlighting = true;
            fallbackFlags = ["-std=c++23"];
          };
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
        C = {
          tab_size = 4;
          hard_tabs = false;
          formatter = "language_server";
          wrap_guides = [100];
        };
        "C++" = {
          tab_size = 4;
          hard_tabs = false;
          formatter = "language_server";
          wrap_guides = [100];
        };
        Rust = {
          wrap_guides = [100];
          formatter = "language_server";
        };
      };
    };
  };
}
