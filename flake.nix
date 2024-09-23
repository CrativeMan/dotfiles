{

  description = "My first flake!";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs-unstable.url = "github:/nixos/nixpkgs/nixos-unstable";

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-hardware = {
      url = "github:nixos/nixos-hardware";
    };

    createp = {
      url = "github:CrativeMan/ProjectCreator";
    };

    tasg = {
      url = "github:CrativeMan/jadeGo";
    };

    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-gnome-theme = {
      url = "github:rafaelmardojai/firefox-gnome-theme";
      flake = false;
    };

    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixos-hardware, ... }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      vars = {
        user = "crative";
        email = "hannig.sebi@gmail.com";
        editor = "nvim";
      };
    in
    {
      nixosConfigurations = {
        nixos = lib.nixosSystem {
          specialArgs = {
            inherit inputs vars;
            host = {
              hostName = "nixos";
            };
          };
          inherit system;
          modules = [ ./modules/nix/configuration.nix ./hosts/nixos-desktop/default.nix ];
        };
        surface = lib.nixosSystem {
          specialArgs = {
            inherit inputs vars nixos-hardware;
            host = {
              hostName = "surface";
            };
          };
          inherit system;
          modules = [ ./modules/nix/configuration.nix ./hosts/nixos-surface/default.nix ];
        };
        framework = lib.nixosSystem {
          specialArgs = {
            inherit inputs vars nixos-hardware;
            host = {
              hostName = "framework";
            };
          };
          inherit system;
          modules = [ ./modules/nix/configuration.nix ./hosts/nixos-framework/default.nix ];
        };

      };

      homeConfigurations = {
        crative = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          extraSpecialArgs = { inherit inputs vars; };

          modules = [ ./modules/home/home.nix ];
        };
      };
    };

}
