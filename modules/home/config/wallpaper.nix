{
  lib,
  vars,
  config,
  ...
}: {
  options = {
    wallpaper.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable wallpaper";
    };
  };

  config = lib.mkIf config.wallpaper.enable {
    dconf.settings = {
      "org/gnome/desktop/background" = {
        color-shading-type = "solid";
        picture-options = "zoom";
        picture-uri = "file://${vars.wallpaper.path}";
        picture-uri-dark = "file://${vars.wallpaper.path}";
      };
    };
  };
}
