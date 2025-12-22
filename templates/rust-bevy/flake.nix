{
  description = "A flake using Oxalica's rust-overlay wrapped with bevy-flake and sccache.";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    bevy-flake = {
      url = "github:swagtop/bevy-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    bevy-flake,
    rust-overlay,
    ...
  }: let
    bf = bevy-flake.override {
      mkRustToolchain = targets: pkgs: let
        pkgs-with-overlay = import nixpkgs {
          inherit (pkgs) system;
          overlays = [(import rust-overlay)];
        };
        channel = "stable"; # For nightly, use "nightly".
      in
        pkgs-with-overlay.rust-bin.${channel}.latest.default.override {
          inherit targets;
          extensions = ["rust-src" "rust-analyzer"];
        };
    };
  in {
    inherit (bf) packages;

    devShells = bf.eachSystem (system: let
      pkgs = import nixpkgs {inherit system;};
    in {
      default = pkgs.mkShell {
        name = "bevy-flake-rust-overlay";
        shellHook = ''
          export RUSTC_WRAPPER=sccache
        '';
        packages = with pkgs; [
          bf.packages.${system}.rust-toolchain

          # build tools
          pkg-config
          clang
          just

          # common Bevy deps
          vulkan-loader
          vulkan-tools
          xorg.libX11
          xorg.libXcursor
          xorg.libXrandr
          xorg.libXi
          wayland
          alsa-lib
          udev

          # nix deps
          package-version-server
          sccache
        ];
      };
    });
  };
}
