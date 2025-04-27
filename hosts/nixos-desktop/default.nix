{...}: {
  imports = [
    ./hardware-configuration.nix
    {
      syncthing = {
        device = "Nixos-Desktop";
      };
    }
  ];

  users.users.crative.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICWZfbSoQfDulldTOdxrG4nTKH7GKjMX + EcbvIkjWWU2 hannig.sebi@gmail.com"
  ];

  hardware.amdgpu.opencl.enable = true;

  system.stateVersion = "24.11"; # Did you read the comment?
}
