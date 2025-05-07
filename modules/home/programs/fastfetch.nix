{vars, ...}: {
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        type = "kitty";
        source = "${vars.flakeDir}/assets/icons/logo.jpg";
        padding.top = 1;
        width = 30;
      };

      modules = [
        {
          type = "custom";
          format = "*.·:·.✧ ✦  crative@nixos  ✧.·:·.*";
          outputColor = "34";
        }
        "break"
        {
          type = "os";
          key = "󱄅 ";
          keyColor = "34";
        }
        {
          type = "kernel";
          key = " ";
          keyColor = "34";
        }
        {
          type = "packages";
          format = "{} (nix)";
          key = " ";
          keyColor = "34";
        }
        {
          type = "shell";
          key = " ";
          keyColor = "34";
        }
        {
          type = "terminal";
          key = " ";
          keyColor = "34";
        }
        {
          type = "wm";
          key = " ";
          keyColor = "34";
        }
        {
          type = "terminalfont";
          key = " ";
          keyColor = "34";
        }
        {
          type = "uptime";
          key = " ";
          keyColor = "34";
        }
        {
          type = "media";
          key = "󰝚 ";
          keyColor = "34";
        }
        {
          type = "player";
          key = " ";
          keyColor = "34";
        }
        "break"
        {
          type = "colors";
          paddingLeft = "2";
          symbol = "circle";
        }
        "break"
      ];
    };
  };
}
