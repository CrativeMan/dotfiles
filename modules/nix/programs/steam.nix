{ pkgs, lib, config, ... }:

{
  options = { gaming.enable = lib.mkEnableOption "Gaming services"; };
  config = lib.mkIf config.gaming.enable {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      extraCompatPackages = [ pkgs.proton-ge-bin ];
    };
    programs.gamemode.enable = true;
  };
}
