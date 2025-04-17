{ pkgs, ... }:

{
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
        ];
        userSettings.auto_install_extensions = true;

        userSettings = {
            #tab_size = 4; maybe this fixes that zed ignores hard tab options
            hard_tabs = true;
            autosave = "off";
            confirm_quit = true;
            relative_line_numbers = true;
            load_direnv = "shell_hook";

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
                    TERM = "kitty";
                };
            };

            lsp = {
                nix = {
                    binary = {
                        path_lookup = true;
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
