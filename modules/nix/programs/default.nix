{ ... }:

{
    imports = [
        ./categories/programs.nix
        ./games.nix
        ./steam.nix
        ./hyprland-programs.nix
        ./docker.nix
        #./kanata.nix
        ./flatpak.nix
    ];

    programs.nautilus-open-any-terminal = {
        enable = true;
        terminal = "kitty";
    };

    gaming.enable = true;
}
