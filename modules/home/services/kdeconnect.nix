{ pkgs, ... }:

{
    services.kdeconnect = {
        enable = false;
        package = pkgs.gnomeExtensions.gsconnect;
    };
}
