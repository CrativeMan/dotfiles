{

  description = "My first flake!";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixpkgs-unstable.url = "github:/nixos/nixpkgs/nixos-unstable";
  };

  outputs = {self, nixpkgs, home-manager, ...}@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
       nixosConfigurations = {
         nixos = lib.nixosSystem {
          specialArgs = {
            inherit inputs;
          };
          inherit system;
          modules = [ ./modules/nix/configuration.nix ];
         };
       };

       homeConfigurations = {
         crative = home-manager.lib.homeManagerConfiguration {
           inherit pkgs;
           modules = [ ./modules/home/home.nix ];
         };
       };
    };

}
