{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    libremines
    cartridges
    heroic
    prismlauncher
    gnome-2048
    # modrinth-app broken in unstable
  ];
}
