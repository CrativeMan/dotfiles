{ pkgs, vars, ... }:

{
  imports =
    [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  syncthing = {
    device = "Nixos-Framework";
  };

  networking.hostName = "framework";

  security = {
    rtkit.enable = true;
    polkit.enable = true;
    sudo.wheelNeedsPassword = true;
  };

  #users.users.crative.openssh.authorizedKeys.keys = [
  #  "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINUMbGTFiMbXoskPcfmNqZgjMO9Pg + 0 OCZUgbLWmNSfF hannig.sebi@gmail.com"
  #];

  #Firmware updates
  services.fwupd.enable = true;

  system.stateVersion = "24.05"; # Did you read the comment?
}
