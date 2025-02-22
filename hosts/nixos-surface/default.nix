{ pkgs, vars, ... }:

{
  imports =
    [
      # Include the results of the hardware scan.
      ../../hosts/nixos-surface/hardware-configuration.nix
    ];

  syncthing = {
    device = "Nixos-Surface";
  };

  boot = {
    loader = {
      # want to change to 
      systemd-boot = {
        enable = true;
      };
      efi.canTouchEfiVariables = true;
      timeout = 1;
    };
  };

  hardware = {
    # Hardware Accelerated Video
    opengl = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
        vaapiIntel
        rocm-opencl-icd
        rocm-opencl-runtime
      ];
      driSupport = true;
      driSupport32Bit = true;
    };
  };

  security = {
    rtkit.enable = true;
    polkit.enable = true;
    sudo.wheelNeedsPassword = true;
  };

  users.users.crative.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINUMbGTFiMbXoskPcfmNqZgjMO9Pg + 0 OCZUgbLWmNSfF hannig.sebi@gmail.com
"
  ];

  #Firmware updates
  services.fwupd.enable = true;
}
