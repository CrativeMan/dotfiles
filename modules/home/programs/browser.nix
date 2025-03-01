{ pkgs, lib, config, inputs, ... }:

{
  config = {
    programs.firefox = {
      enable = true;
      nativeMessagingHosts = [ pkgs.gnomeExtensions.gsconnect ];
      # profiles.default = {
      #   name = "Default";
      #   settings = {
      #     "browser.tabs.loadInBackground" = true;
      #     "widget.gtk.rounded-bottom-corners.enabled" = true;
      #     "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      #     "svg.context-properties.content.enabled" = true;
      #     "gnomeTheme.hideSingleTab" = false;
      #     "gnomeTheme.normalWidthTabs" = false;
      #     "gnomeTheme.tabsAsHeaderbar" = false;
      #     #"browser.toolbars.bookmarks.visibility" = "never";
      #   };
      #   userChrome = ''
      #     @import "firefox-gnome-theme/userChrome.css";
      #   '';
      #   userContent = ''
      #     @import "firefox-gnome-theme/userContent.css";
      #   '';
      # };
    };

    programs.chromium = {
      enable = true;

      commandLineArgs = [ "--enable-features=TouchpadOverscrollHistoryNavigation" ];
      extensions = [
        # {id = "";}  // extension id, query from chrome web store
      ];
    };
  };
}
