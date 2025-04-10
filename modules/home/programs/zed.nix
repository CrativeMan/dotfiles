{ inputs, pkgs, lib, ... }:

{
  nixpkgs.overlays = [
    (final: prev: {
      unstable = import inputs.nixpkgs-unstable {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    })
  ];

  programs.zed-editor = {
    enable = true;
    package = pkgs.zed-editor;

    extensions = [
      "csv"
      "env"
      "make"
      "nix"
      "severance"
    ];

    userSettings = {
            vim_mode = true;
      vim = {
        enable_vim_sneak = true;
      };
      theme = "Rosé Pine";
      # icon_theme = {
      #     mode = "system";
      #     dark = "Catppuccin Frappé";
      #     light = "Catppuccin Latte";
      # };
      ui_font_size = lib.mkForce 18;
      buffer_font_size = lib.mkForce 18;
      relative_line_numbers = true;
      file_finder = {
        modal_width = "medium";
      };
      tab_bar = {
        show = true;
      };
      tabs = {
        show_diagnostics = "errors";
      };
      indent_guides = {
        enabled = true;
        coloring = "indent_aware";
      };
      inlay_hints = {
        enabled = true;
      };
      inactive_opacity = "0.5";
      auto_install_extensions = true;
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

      assistant = {
        enabled = false;
        version = "2";
        default_open_ai_model = null;

        default_model = {
          provider = "zed.dev";
          model = "claude-3-5-sonnet-latest";
        };
      };
      auto_update = false;
      terminal = {
        alternate_scroll = "off";
        blinking = "off";
        copy_on_select = false;
        dock = "bottom";
        detect_venv = {
          on = {
            directories = [
              ".env"
              "env"
              ".venv"
              "venv"
            ];
            activate_script = "default";
          };
        };
        env = {
          EDITOR = "zed --wait";
          TERM = "ghostty"; # or kitty etc
        };
        font_family = "FiraCode Nerd Font Mono";
        font_features = null;
        line_height = "comfortable";
        option_as_meta = false;
        button = false;
        shell = "system";
        toolbar = {
          title = true;
        };
        working_directory = "current_project_directory";
      };
       # File syntax highlighting
      file_types = {
        JSON = [
          "json"
          "jsonc"
          "*.code-snippets"
        ];
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

      lsp = {
        nix = {
          binary = {
            path_lookup = true;
          };
        };

        "rust-analyzer" = {
          # Quote the LSP name
          binary = {  # run `which rust-analyzer`
            path = "/nix/store/3i6z4bh7ffyj99drw554nsmnspyizky6-rust-default-1.87.0-nightly-2025-02-18/bin/rust-analyzer";
          };
          settings = {
            diagnostics = {
              enable = true;
              styleLints = {
                enable = true;
              }; # Corrected styleLints access
            };
            checkOnSave = true;
            check = {
              command = "clippy";
              features = "all";
            };
            cargo = {
              buildScripts = {
                enable = true;
              }; # Corrected buildScripts access
              features = "all";
            };
            inlayHints = {
              bindingModeHints = {
                enable = true;
              }; # Corrected access
              closureStyle = "rust_analyzer";
              closureReturnTypeHints = {
                enable = "always";
              }; # Corrected access
              discriminantHints = {
                enable = "always";
              }; # Corrected access
              expressionAdjustmentHints = {
                enable = "always";
              }; # Corrected access
              implicitDrops = {
                enable = true;
              };
              lifetimeElisionHints = {
                enable = "always";
              }; # Corrected access
              rangeExclusiveHints = {
                enable = true;
              };
            };
            procMacro = {
              enable = true;
            };
            rustc = {
              source = "discover";
            };
            files = {
              excludeDirs = [
                ".cargo"
                ".direnv"
                ".git"
                "node_modules"
                "target"
              ];
            };
          };
        };

        settings = {
          # This is for other LSP servers, keep it separate
          dialyzerEnabled = true;
        };
      };
    };
  };
}
