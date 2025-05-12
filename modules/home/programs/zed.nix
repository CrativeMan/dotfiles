{
  pkgs,
  lib,
  vars,
  ...
}: {
  home.file."/home/${vars.user}/.config/zed/themes/Zenburn.json" = {
    text = ''
      {
        "name": "Zenburn",
        "author": "Dmitry Geurkov",
        "themes": [
          {
            "name": "Zenburn",
            "appearance": "dark",
            "style": {
              "background": "#3a3a3a",
              "syntax": {
                "string": {
                  "color": "#ea9a9a",
                  "font_style": null,
                  "font_weight": null
                },
                "tag": {
                  "color": "#e2bcbd",
                  "font_style": null,
                  "font_weight": null
                },
                "type": {
                  "color": "#dddeb7",
                  "font_style": null,
                  "font_weight": null
                },
                "number": {
                  "color": "#7fc5c5",
                  "font_style": null,
                  "font_weight": null
                },
                "operator": {
                  "color": "#f4fad7",
                  "font_style": null,
                  "font_weight": null
                },
                "preproc": {
                  "color": "#f9ddb5",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword": {
                  "color": "#f9ddb5",
                  "font_style": null,
                  "font_weight": null
                },
                "comment": {
                  "color": "#95bf98",
                  "font_style": null,
                  "font_weight": null
                },
                "boolean": {
                  "color": "#e1bbbc",
                  "font_style": null,
                  "font_weight": null
                },
                "constant": {
                  "color": "#e2bcbd",
                  "font_style": null,
                  "font_weight": null
                },
                "function": {
                  "color": "#ebee83",
                  "font_style": null,
                  "font_weight": null
                },
                "label": {
                  "color": "#dbdcb6",
                  "font_style": null,
                  "font_weight": null
                },
                "variable": {
                  "color": "#fadeb6",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.symbol": {
                  "color": "#e2bcbd",
                  "font_style": null,
                  "font_weight": null
                },
                "editor.foreground": {
                  "color": "",
                  "font_style": null,
                  "font_weight": null
                },
                "attribute": {
                  "color": "#dbdcb6",
                  "font_style": null,
                  "font_weight": null
                }
              },
              "players": [],
              "text": "#d0d1d2",
              "editor.line_number": "#b7b8b9",
              "editor.active_line_number": "#f9ddb5",
              "editor.active_line.background": "",
              "editor.gutter.background": null,
              "status_bar.background": "#2a2a2a",
              "tab.active_background": "#2a2a2a",
              "title_bar.background": "#2a2a2a",
              "panel.background": "#2a2a2a",
              "border": "#3f3f3f",
              "error": "#ea9a9a",
              "error.background": "#2f2f2f",
              "hint": "#7fc5c5",
              "info": "#7fc5c5",
              "warning": "#ebee83",
              "warning.background": "#2f2f2f",
              "error.border": "#3f3f3f",
              "warning.border": "#3f3f3f",
              "editor.background": "#3a3a3a",
              "editor.foreground": "#d0d1d2",
              "hint.background": "#2f2f2f",
              "hint.border": "#3f3f3f",
              "info.background": "#2f2f2f",
              "info.border": "#3f3f3f",
              "predictive.background": "#2f2f2f",
              "predictive.border": "#3f3f3f",
              "renamed.background": "#2f2f2f",
              "renamed.border": "#3f3f3f",
              "success.background": "#2f2f2f",
              "unreachable.background": "#2f2f2f",
              "success.border": "#3f3f3f",
              "unreachable.border": "#3f3f3f",
              "predictive": "#7fc5c5"
            }
          }
        ],
        "id": "1RwhRKupgeNflVrmoIYfJ"
      }
    '';
  };

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
      vim_mode = true;

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
      theme = "Zenburn";
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
