{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };
  outputs = inputs @ {
    flake-parts,
    systems,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = import systems;
      perSystem = {pkgs, ...}: {
        formatter = pkgs.alejandra;

        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            cmake
            clang-tools
            vcpkg
            vcpkg-tool
          ];
        };

        packages.default = pkgs.stdenv.mkDerivation {
          pname = "my-package";
          version = "0.0.0";

          src = ./.;

          buildInputs = with pkgs; [
            cmake
            clang-tools
          ];

          buildPhase = ''
            make
          '';

          installPhase = ''
            mkdir -p $out/bin
            cp bin/main $out/bin/main
            echo "Installation complete!"
          '';
        };
      };
    };
}
