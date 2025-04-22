{config, ...}: {
  programs.hyprlock = {
    enable = true;
    settings = {
      background = [
        {
          monitor = "";
          path = "${config.wallpaper.path}";
          blur_size = 5;
          blur_passes = 2;
          noise = 0.02;
          contrast = 1.25;
          brightness = 0.85;
          vibrancy = 0.2;
          vibrancy_darkness = 0.15;
        }
      ];

      input-field = [
        {
          monitor = "";
          outline_thickness = 2;
          dots_size = 0.2;
          dots_spacing = 0.1;
          dots_center = true;
          hide_input = false;
          placeholder_text = "<i>Enter your password…</i>";
          fade_on_empty = false;

          halign = "center";
          valign = "center";

          size = {
            width = 200;
            height = 50;
          };

          outer_color = "rgba(ffffffcc)";
          inner_color = "rgba(1e1e2eff)";
          font_color = "rgb(ffffff)";
        }
      ];
    };
  };
}
