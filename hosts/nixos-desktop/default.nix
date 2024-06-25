_: {
  imports = [
    ./hardware-configuration.nix
    {
      syncthing = {
        device = "Nixos-Desktop";
      };
    }
  ];
}