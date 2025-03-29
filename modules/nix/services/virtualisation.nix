{ config, pkgs, ... }:
{
  virtualisation.podman = {
    enable = true;
  };

  environment.systemPackages = [ 
    pkgs.distrobox
   ];

  services.httpd = {
    enable = true;
    adminAddr = "hannig.sebi@gmail.com";
    enablePHP = true;
    virtualHosts."localhost" = {
      documentRoot = "/var/www/localhost";
    };
  };

  services.mysql = {
    enable = true;
    package = pkgs.mariadb;
  };

}
