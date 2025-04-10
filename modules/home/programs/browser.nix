{ pkgs, ... }:

{
  config = {
    programs.firefox = {
      enable = true;
      nativeMessagingHosts = [ pkgs.gnomeExtensions.gsconnect ];
    };

    programs.chromium = {
      enable = true;

      commandLineArgs = [ "--enable-features=TouchpadOverscrollHistoryNavigation" ];
      extensions = [
      ];
    };
  };
}
