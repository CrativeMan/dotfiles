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
        ];
        userSettings.auto_install_extensions = true;

        userSettings = {
            tab_size = 4;
            autosave = "off";
            confirm_quit = true;

            indent_guides = {
              enabled = true;
              coloring = "indent_aware";
            };

            format_on_save = true;
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

            nix = {
                binary = {
                    path_lookup = true;
                };
            };
        };
    };
}
