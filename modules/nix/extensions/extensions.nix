{ pkgs, config, ...}:

{
  environment.systemPackages = with pkgs; [
    gnomeExtensions.tiling-assistant
    gnomeExtensions.force-quit
    gnomeExtensions.blur-my-shell
    gnomeExtensions.color-picker
    gnomeExtensions.rounded-window-corners
    gnomeExtensions.launch-new-instance
    gnomeExtensions.gsconnect
  ];
}