{pkgs, ...}: {
  home.packages = with pkgs; [
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    gvfs
    udiskie

    lxappearance
    gtk-engine-murrine
  ];

  home.sessionVariables = {
    GDK_BACKEND = "wayland,x11";
    QT_QPA_PLATFORM = "wayland;xcb";
  };

  dconf.settings = {
    "org/xfce/thunar/preferences" = {
      show-hidden = true;
      date-style = "iso";
      single-click = false;
    };
  };
}
