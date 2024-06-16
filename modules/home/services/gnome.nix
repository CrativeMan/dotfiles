{ config, pkgs, ... }:

{
  dconf.settings = {
    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };
    "org/gnome/desktop/wm/keybindings" = {
      switch-to-workspace-left = ["<Control><Super>Left"];
      switch-to-workspace-right = ["<Control><Super>Right"];
      show-desktop = ["<Super>d"];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      home = ["<Super>f"];
      www = ["<Super>w"];

      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
      ];
    };

    "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = ["<Super>b"];
      command = "/home/crative/.nix-profile/bin/firefox";
      name = "Browser";
    };
    
    "org/gnome/shell" = {
      enabled-extensions = [
        "blur-my-shell@aunetx"
        "tiling-assistant@leleat-on-github"
        "fq@megh"
        "color-picker@tuberry"
        "user-theme@gnome-shell-extensions.gcampex.github.com"
        "rounded-window-corners@fxgn"
        "launch-new-instance@gnome-shell-extensions.gcampax.github.com"
      ];
    };
  };
}
