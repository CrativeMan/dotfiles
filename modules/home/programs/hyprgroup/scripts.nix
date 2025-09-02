{
  pkgs,
  vars,
  ...
}: {
  #─────────────────────────────────────────────────────────────────────────
  # Workspaces Management
  home.file."/home/${vars.user}/.config/waybar/scripts/workspace-1.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash

      active=$(hyprctl activeworkspace -j | jq '.id')

      if [ "$active" -eq 1 ]; then
        echo "[<span foreground='#ac82e9'>●</span>]"
      else
        echo "[А]"
      fi
    '';
  };
  home.file."/home/${vars.user}/.config/waybar/scripts/workspace-2.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash

      active=$(hyprctl activeworkspace -j | jq '.id')

      if [ "$active" -eq 2 ]; then
        echo "[<span foreground='#ac82e9'>●</span>]"
      else
        echo "[B]"
      fi
    '';
  };
  home.file."/home/${vars.user}/.config/waybar/scripts/workspace-3.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash

      active=$(hyprctl activeworkspace -j | jq '.id')

      if [ "$active" -eq 3 ]; then
        echo "[<span foreground='#ac82e9'>●</span>]"
      else
        echo "[C]"
      fi
    '';
  };
  home.file."/home/${vars.user}/.config/waybar/scripts/workspace-4.sh" = {
    executable = true;
    text = ''
      #!/usr/bin/env bash

      active=$(hyprctl activeworkspace -j | jq '.id')

      if [ "$active" -eq 4 ]; then
        echo "[<span foreground='#ac82e9'>●</span>]"
      else
        echo "[D]"
      fi
    '';
  };
  #─────────────────────────────────────────────────────────────────────────
  #Screenshots
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

  #─────────────────────────────────────────────────────────────────────────
  #Power
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
