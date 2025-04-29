{pkgs, ...}: {
  dconf.settings = {
    "org/gnome/mutter" = {
      experimental-features = ["scale-monitor-framebuffer"];
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };

    "org/gnome/desktop/interface" = {
      accent-color = "pink";
    };

    "org/gnome/desktop/wm/preferences" = {
      focus-new-windows = true;
      auto-raise = true;
      raise-on-click = true;
    };

    "org/gnome/desktop/wm/keybindings" = {
      switch-to-workspace-1 = ["<Super>1"];
      switch-to-workspace-2 = ["<Super>2"];
      switch-to-workspace-3 = ["<Super>3"];
      switch-to-workspace-left = ["<Control><Alt>Left"];
      switch-to-workspace-right = ["<Control><Alt>Right"];

      move-to-workspace-1 = ["<Super><Shift>1"];
      move-to-workspace-2 = ["<Super><Shift>2"];
      move-to-workspace-3 = ["<Super><Shift>3"];
      move-to-monitor-left = ["<Super><Shift>Left"];
      move-to-monitor-right = ["<Super><Shift>Right"];
      close = ["<Super>C"];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      home = "<Super>f";
      www = "<Super>w";

      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
      ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>b";
      command = "/home/crative/.nix-profile/bin/firefox";
      name = "Browser";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>q";
      command = "${pkgs.ghostty}/bin/ghostty";
      name = "Terminal";
    };

    "org/gnome/shell" = {
      enabled-extensions = [
        "status-icons@fmuellner"
        "status-icons@gnome-shell-extensions.gcampax.github.com"
        "blur-my-shell@aunetx"
        "tiling-assistant@leleat-on-github"
        "fq@megh"
        "color-picker@tuberry"
        "user-theme@gnome-shell-extensions.gcampex.github.com"
        #"rounded-window-corners@fxgn"
        "launch-new-instance@gnome-shell-extensions.gcampax.github.com"
        "gsconnect@andyholmes.github.io"
      ];
    };
  };
}
