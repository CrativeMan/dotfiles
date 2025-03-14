{ pkgs, config, ... }:

{
  # gnomeExtensions.rounded-window-corners
  # gnomeExtensions.gnome-clipboard-indicator
  environment.systemPackages = with pkgs; [
    gnomeExtensions.tiling-assistant
    gnomeExtensions.force-quit
    gnomeExtensions.blur-my-shell
    gnomeExtensions.color-picker
    gnomeExtensions.launch-new-instance

    gnome-tweaks
    gnome-software
    adw-gtk3
    unstable.resources
  ];
}
