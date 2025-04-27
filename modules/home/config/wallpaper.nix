{
  lib,
  config,
  ...
}: {
  options = {
    wallpaper.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable wallpaper";
    };
    wallpaper.path = lib.mkOption {
      type = lib.types.path;
      description = "Path to the wallpaper image";
    };
  };

  config = lib.mkIf config.wallpaper.enable {
    dconf.settings = {
      "org/gnome/desktop/background" = {
        color-shading-type = "solid";
        picture-options = "zoom";
        picture-uri = "file://${config.wallpaper.path}";
        picture-uri-dark = "file://${config.wallpaper.path}";
      };
    };
  };
}
