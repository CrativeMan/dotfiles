{pkgs, ...}: let
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

  pixilate = pkgs.writeShellApplication {
  	name = "pixilate";
   	runtimeInputs = [pkgs.imagemagick];
    text = ''
	    set -euo pipefail

	    if [ $# -lt 2 ]; then
	        echo "Usage: $0 <image_or_folder> <scale_percent>"
	        exit 1
	    fi

	    target="$1"
	    scale="$2"

	    process_file() {
	        input="$1"

	        filename="$(basename -- "$input")"
	        extension="''${filename##*.}"
	        name="''${filename%.*}"
	        dir="$(dirname -- "$input")"

	        output="''${dir}/''${name}_pixilated.''${extension}"

	        echo "Processing: $input"
	        magick "$input" -scale "''${scale}%" -scale 2000% "$output"
	    }

	    # If input is a directory → batch process
	    if [ -d "$target" ]; then
	        echo "Batch processing folder: $target"
	        shopt -s nullglob nocaseglob
	        for file in "$target"/*.{jpg,jpeg,png,webp,bmp,tiff,gif}; do
	            process_file "$file"
	        done
	    else
	        process_file "$target"
	    fi

	    echo "Done."
    '';
  };
in {
  environment.systemPackages = [
    proj
    pixilate
  ];
}
