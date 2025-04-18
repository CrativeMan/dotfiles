{...}: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        modules-left = ["hyprland/workspaces" "hyprland/window"];
        modules-center = ["clock"];
        modules-right = ["pulseaudio" "pulseaudio/slider" "network" "battery" "tray"];
      };
    };
    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 12px;
        background-color: #1e1e2e;
        color: #cdd6f4;
      }

      #clock {
        color: #89b4fa;
      }

      #pulseaudio-slider slider {
        min-height: 0px;
        min-width: 0px;
        opacity: 0;
        background-image: none;
        border: none;
        box-shadow: none;
      }

      #pulseaudio-slider trough {
        min-height: 10px;
        min-width: 80px;
        border-radius: 5px;
        background-color: #313244;
      }

      #pulseaudio-slider highlight {
        min-width: 10px;
        border-radius: 5px;
        background-color: #a6e3a1;
      }
    '';
  };
}
