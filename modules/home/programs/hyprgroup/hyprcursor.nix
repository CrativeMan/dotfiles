{pkgs, ...}: {
  home.pointerCursor = {
    name = "rose-pine-hyprcursor";
    package = pkgs.rose-pine-hyprcursor;
    hyprcursor = {
      enable = true;
      size = 24;
    };
  };

  wayland.windowManager.hyprland.settings = {
    env = [
      "HYPRCURSOR_THEME,rose-pine-hyprcursor"
      "HYPRCURSOR_SIZE,24"
    ];

    exec-once = [
      "hyprctl setcursor rose-pine-hyprcursor 24"
    ];
  };
}
