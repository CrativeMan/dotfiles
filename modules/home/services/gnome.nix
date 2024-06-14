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
      calculator = ["<Super>r"];
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
