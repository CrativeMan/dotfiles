{ ... }:

{
  home.file.".config/fastfetch/config.jsonc".text = ''
    // ~/.config/fastfetch/config.jsonc
    // See https://github.com/fastfetch-cli/fastfetch/wiki/Configuration for more details
    // See * .jsonc in https://github.com/fastfetch-cli/fastfetch/tree/dev/presets/examples for more examples
    {
      "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
      "logo": {
        "source": "nix_old",
        "padding": {
          "top": 2
        }
      },
      "modules": [
        "title",
        "separator",
        "os",
        "host",
        "kernel",
        "separator",
        "uptime",
        "packages",
        "shell",
        "separator",
        //"display",
        "de",
        "wm",
        "wmtheme",
        "theme",
        "icons",
        "font",
        "cursor",
        "terminal",
        "terminalfont",
        "separator",
        "cpu",
        "gpu",
        "memory",
        "disk",
        //"localip",
        "battery",
        "poweradapter",
        "locale",
        "break",
        "colors"
      ]
    }
  '';
}
