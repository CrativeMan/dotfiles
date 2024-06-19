{ config, pkgs, ... }:

{
  dconf.settings = {
    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };

    "org/gnome/desktop/wm/preferences" = {
      focus-new-windows = true;
      auto-raise = true;
      raise-on-click = true;
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = ["<Super>C"];

      switch-to-workspace-1 = ["<Super>1"];
      switch-to-workspace-2 = ["<Super>2"];
      switch-to-workspace-3 = ["<Super>3"];
      switch-to-workspace-4 = ["<Super>4"];
      switch-to-workspace-5 = ["<Super>5"];
      switch-to-workspace-6 = ["<Super>6"];
      switch-to-workspace-7 = ["<Super>7"];
      switch-to-workspace-8 = ["<Super>8"];
      switch-to-workspace-9 = ["<Super>9"];
      switch-to-workspace-left = ["<Control><Alt>Left"];
      switch-to-workspace-right = ["<Control><Alt>Right"];
      
      move-to-workspace-1 = ["<Super><Shift>1"];
      move-to-workspace-2 = ["<Super><Shift>2"];
      move-to-workspace-3 = ["<Super><Shift>3"];
      move-to-workspace-4 = ["<Super><Shift>4"];
      move-to-workspace-5 = ["<Super><Shift>5"];
      move-to-workspace-6 = ["<Super><Shift>6"];
      move-to-workspace-7 = ["<Super><Shift>7"];
      move-to-workspace-8 = ["<Super><Shift>8"];
      move-to-workspace-9 = ["<Super><Shift>9"];
      move-to-monitor-left = ["<Super><Shift>Left"];
      move-to-monitor-right = ["<Super><Shift>Right"];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      home = ["<Super>f"];
      www = ["<Super>w"];

      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
      ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
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
