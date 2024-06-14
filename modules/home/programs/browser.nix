{ config, pkgs, inputs, ...}:

{
  programs.firefox = {
    enable = true;
    profiles.default = {
      enableGnomeExtensions = true;

      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
          keepassxc-browser
          darkreader
          ublock-origin
          vimium
          youtube-shorts-block
      ];
    };
  };
}