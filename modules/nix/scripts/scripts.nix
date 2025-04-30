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
    runtimeInputs = [pkgs.gum pkgs.jq];
    text = ''
      set +o nounset

      url=$1

      if ! command -v gum >/dev/null 2>&1; then
        echo "gum is not installed. Please install it and ensure it's in your PATH."
        exit 1
      fi

      if command -v jq >/dev/null 2>&1; then
        jq_cmd="jq"
      else
        echo "jq is not available in the environment, using nix-shell"
        jq_cmd="nix run nixpkgs#jq"
      fi

      known_urls=(
          "git+ssh://git@github.com/CrativeMan/dotfiles"
          "git+ssh://git@github.com/ewuuwe/dotfiles"
      )

      if [ -z "$url" ]; then
          url=$(printf "%s\n" "''${known_urls[@]}" | gum choose)
      fi

      options=$($jq_cmd -r '.templates | keys[]' <(nix flake show "$url" --json))

      if [ -z "$options" ]; then
        echo "No options found.  Either the flake is empty, or doesn't have any templates."
        exit 1
      fi

      selected_option=$(echo "$options" | gum choose)

      if [ -n "$selected_option" ]; then
        echo "Selected option: $selected_option"
        nix flake init --template "$url#$selected_option"
      else
        echo "No option was selected."
        exit 1
      fi
    '';
  };
in {
  environment.systemPackages = [
    test
    proj
  ];
}
