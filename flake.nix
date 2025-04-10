{

  description = "My first flake!";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs-unstable.url = "github:/nixos/nixpkgs/nixos-unstable";

    nixos-hardware = {
      url = "github:nixos/nixos-hardware";
    };

    gogo = {
      url = "github:CrativeMan/gogoproj";
    };

    clh = {
      url = "github:CrativeMan/clh";
    };

    kmark = {
      url = "github:CrativeMan/kmark?rev=df762582b1cf78c2a04804e324d636b256e071e6";
    };

    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim/nixos-24.11";
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
        self = self;
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
