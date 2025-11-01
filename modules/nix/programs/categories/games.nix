{
  pkgs,
  inputs,
  ...
}: {
  nixpkgs.overlays = [
    (final: prev: {
      unstable = import inputs.nixpkgs-unstable {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    })
  ];

  environment.systemPackages = with pkgs; [
    libremines
    unstable.cartridges
    heroic
    prismlauncher
    gnome-2048
    raylib-games
    modrinth-app
  ];
}
