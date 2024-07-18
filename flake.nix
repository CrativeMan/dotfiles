{

  description = "My first flake!";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
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

    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
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
