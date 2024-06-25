{ pkgs, vars, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ../../hosts/nixos-surface/hardware-configuration.nix
    ];

  syncthing = {
    device = "Nixos-Surface";
  }

  boot = {
    # Boot Options
    loader = {
      systemd-boot = {
        enable = true;
        #configurationLimit = 10;
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

  #Firmware updates
  services.fwupd.enable = true;

  #hyprland.enable = true;
  gnome.enable = true;
}
