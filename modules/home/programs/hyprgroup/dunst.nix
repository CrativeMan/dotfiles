{...}: {
  services.dunst = {
    enable = true;

    settings = {
      global = {
        font = "Bmono 12";
        geometry = "0x0-62-62";
        separator_height = 2;
        padding = 2;
        horizontal_padding = 2;
        frame_width = 2;

        markup = "full";
        format = "<b>%s</b>\n%b";
        icon_path = "";
        icon_position = "left";
        max_icon_size = 64;
        show_indicators = false;
        separator_color = "frame";

        mouse_left_click = "do_action";
        mouse_right_click = "close_current";
        mouse_middle_click = "close_current";
      };

      urgency_low = {
        foreground = "#D8D8D8";
        background = "#181818E5";
        frame_color = "#585858";
        timeout = 3;
      };

      urgency_normal = {
        foreground = "#D8D8D8";
        background = "#181818E5";
        frame_color = "#585858";
        timeout = 5;
      };

      urgency_critical = {
        foreground = "#D8D8D8";
        background = "#181818E5";
        frame_color = "#AB4642";
        timeout = 7;
      };
    };
  };
}
