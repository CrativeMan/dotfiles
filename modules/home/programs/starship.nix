{ config, pkgs, lib, ...}:

{
  programs.starship = {
    enable = true;

    enableTransience = true;
    enableZshIntegration = true;
    enableBashIntegration = true;

    settings = {
      directory = {
        format = "[ ](bold #89b4fa)[ $path ]($style)";
        style = "bold #b4befe";
      };

      character = {
        success_symbol = "[ ](bold #89b4fa)[ ➜](bold green)";
        error_symbol = "[ ](bold #89b4fa)[ ➜](bold red)";
        # error_symbol = "[ ](bold #89dceb)[ ✗](bold red)";
      };

      cmd_duration = {
        format = "[]($style)[[󰔚 ](bg:#161821 fg:#d4c097 bold)$duration](bg:#161821 fg:#BBC3DF)[ ]($style)";
        disabled = false;
        style = "bg:none fg:#161821";
      };

     # directory.substitutions = {
     # "~" = "󰋞";
     # "Documents" = " ";
     # "Downloads" = " ";
     # "Music" = " ";
     # "Pictures" = " ";
     # };

      palette = "gruvbox";
    };
  };
}
