{pkgs, ...}: {
  gtk = {
    enable = true;

    theme = {
      name = "Catppuccin-Mocha-Compact-Blue";
      package = pkgs.catppuccin-gtk.override {
        accents = ["blue"];
        variant = "mocha";
        size = "compact";
      };
    };

    cursorTheme = {
      name = "rose-pine-hyprcursor";
      package = pkgs.rose-pine-hyprcursor;
      size = 24;
    };

    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };

    gtk3 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = true;
        gtk-cursor-theme-name = "Adwaita";
        gtk-cursor-theme-size = 24;
      };
    };

    gtk4 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = true;
        gtk-cursor-theme-name = "Adwaita";
        gtk-cursor-theme-size = 24;
      };
    };
  };

  home.sessionVariables = {
    XCURSOR_THEME = "Adwaita";
    XCURSOR_SIZE = "24";
    GTK_USE_PORTAL = "1";
  };
}
