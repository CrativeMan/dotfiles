{
  pkgs,
  vars,
  ...
}: {
  # ============================================================================================
  # Screenshots
  home.file."/home/${vars.user}/.config/hypr/scripts/screenshot_full.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash
      mkdir -p ~/Pictures/Screenshots/hypr
      filename=~/Pictures/Screenshots/hypr/screenshot_$(date +%s).png
      ${pkgs.grim}/bin/grim "$filename"
      ${pkgs.xclip}/bin/xclip -selection clipboard -t image/png "$filename"
      notify-send --app-name=Hyprland --icon="$filename" "Screenshot saved!"
    '';
  };

  home.file."/home/${vars.user}/.config/hypr/scripts/screenshot_area.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash
      mkdir -p ~/Pictures/Screenshots/hypr
      filename=~/Pictures/Screenshots/hypr/screenshot_$(date +%s).png
      ${pkgs.grim}/bin/grim -g "$(slurp)" "$filename"
      ${pkgs.xclip}/bin/xclip -selection clipboard -t image/png "$filename"
      notify-send --app-name=Hyprland --icon="$filename" "Area Screenshot saved!"
    '';
  };

  home.file."/home/${vars.user}/.config/hypr/scripts/screenshot_edit.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash
      ${pkgs.grim}/bin/grim -g "$(slurp)" - | ${pkgs.swappy}/bin/swappy -f -
    '';
  };

  # ============================================================================================
  # Shutdown
  home.file."/home/${vars.user}/.config/waybar/scripts/shutdown_prompt.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash

      choice=$(echo -e "No\nYes" | rofi -dmenu -p "Shutdown?")

      if [[ "$choice" == "Yes" ]]; then
        systemctl poweroff
      fi
    '';
  };

  # ============================================================================================
  # Waybar
  # home.file."/home/${vars.user}/.config/waybar/scripts/workspaces_left.sh" = {
  #   executable = true;
  #   text = ''
  #     #!/usr/bin/env bash

  #     workspaces=$(hyprctl workspaces -j)
  #     active_id=$(hyprctl activeworkspace -j | jq -r ".id")
  #     output=""

  #     for id in 1 2; do
  #       ws=$(echo "$workspaces" | jq ".[] | select(.id == $id)")

  #       if [ -n "$ws" ]; then
  #         name=$(echo "$ws" | jq -r '.name')
  #         id=$(echo "$ws" | jq -r '.id')

  #         if [ "$id" == "$active_id" ]; then
  #           color="#89b4fa"
  #         else
  #           color="#cdd6f4"
  #         fi

  #         output+="<span color='$color'>[$name]</span> "
  #       fi
  #     done

  #     echo "{\"text\":\"''${output% }\"}"
  #   '';
  # };

  # home.file."/home/${vars.user}/.config/waybar/scripts/workspaces_right.sh" = {
  #   executable = true;
  #   text = ''
  #     #!/usr/bin/env bash

  #     workspaces=$(hyprctl workspaces -j)
  #     active_id=$(hyprctl activeworkspace -j | jq -r ".id")
  #     output=""

  #     for id in 3 4; do
  #       ws=$(echo "$workspaces" | jq ".[] | select(.id == $id)")

  #       if [ -n "$ws" ]; then
  #         name=$(echo "$ws" | jq -r '.name')
  #         id=$(echo "$ws" | jq -r '.id')

  #         if [ "$id" == "$active_id" ]; then
  #           color="#89b4fa"
  #         else
  #           color="#cdd6f4"
  #         fi

  #         output+="<span color='$color'>[$name]</span> "
  #       fi
  #     done

  #     echo "{\"text\":\"''${output% }\"}"
  #   '';
  # };

  home.file."/home/${vars.user}/.config/waybar/scripts/powermode.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash

      profiles=("power-saver" "balanced" "performance")
      current=$(powerprofilesctl get)

      for i in "''${!profiles[@]}"; do
        if [[ "''${profiles[$i]}" == "$current" ]]; then
          current_index=$i
          break
        fi
      done

      next_index=$(( (current_index + 1) % ''${#profiles[@]} ))
      next_profile=''${profiles[$next_index]}

      powerprofilesctl set "$next_profile"

      notify-send "Power Profile" "Switched to: $next_profile"
    '';
  };
}
