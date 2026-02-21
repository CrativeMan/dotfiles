{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    libremines
    cartridges
    heroic
    prismlauncher
    gnome-2048
    vintagestory
    # modrinth-app broken in unstable
  ];
}
