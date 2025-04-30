{pkgs, ...}: let
  test = pkgs.writeShellApplication {
    name = "asd-test";
    runtimeInputs = [pkgs.hyprland];
    text = ''
      hyprctl activeworkspace
      echo "Hello, World!"
    '';
  };

  proj = pkgs.writeShellApplication {
    name = "proj";
    runtimeInputs = [pkgs.gum];
    text = ''
      url=$1

      if [ -z "$url" ]; then
          echo "Usage: $0 <url>"
          exit 1
      fi

      types=$(nix flake show $url --json | jq -r '.templates | keys[]')

      if [ -z "$types" ]; then
          echo "No templates found for $url"
          exit 1
      fi

      chosen_type=$(gum choose $types)

      if [ -z "$chosen_type" ]; then
          echo "No template selected"
          exit 1
      fi

      nix flake init --template $url#$chosen_type
    '';
  };
in {
  environment.systemPackages = [
    test
    proj
  ];
}
