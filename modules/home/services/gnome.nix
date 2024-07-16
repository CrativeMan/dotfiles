{ config, pkgs, ... }:

{
  gtk = {
    enable = true;
    theme = {
      name = "Breeze-Dark"; 
      package = pkgs.libsForQt5.breeze-gtk;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "lavender";
      };
    };
    gtk3 = {
      extraConfig.gtk-application-prefer-dark-theme = true;
    };
  };

  home.pointerCursor = {
    gtk.enable = true;
    name = "Catppuccin-Mocha-Light-Cursors";
    package = pkgs.catppuccin-cursors.mochaLight;
    size = 16;
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      gtk-theme = "Breeze-Dark";
      color-scheme = "prefer-dark";
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
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
