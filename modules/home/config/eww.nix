{
  pkgs,
  vars,
  ...
}: {
  home.packages = with pkgs; [
    eww
  ];

  home.file."/home/${vars.user}/.config/eww/eww.yuck" = {
    text = ''
      (defpoll weekday_poll :interval "60s" "date +%A")
      (defpoll time_poll :interval "60s" "date +%H:%M")

      (defwidget time_widget []
        (box
          :class "timewidget"
          :orientation "vertical"
          (label :text "''${weekday_poll}")
          (label :text "''${time_poll}")
        )
      )

      (defwindow time_bg_window
        :monitor 0
        :geometry (geometry
          :x "50%"
          :y "10%"
          :anchor "top center")
        :stacking "bg"
        :windowtype "desktop"
        :focusable false
        :wm-ignore false
        :ignore-mouse true
        (time_widget)
      )
    '';
  };

  home.file."/home/${vars.user}/.config/eww/eww.scss" = {
    text = ''
      $rosewater: #f5e0dc;
      $flamingo: #f2cdcd;
      $pink: #f5c2e7;
      $mauve: #cba6f7;
      $red: #f38ba8;
      $maroon: #eba0ac;
      $peach: #fab387;
      $yellow: #f9e2af;
      $green: #a6e3a1;
      $teal: #94e2d5;
      $sky: #89dceb;
      $sapphire: #74c7ec;
      $blue: #89b4fa;
      $lavender: #b4befe;
      $text: #cdd6f4;
      $subtext1: #bac2de;
      $subtext0: #a6adc8;
      $overlay2: #9399b2;
      $overlay1: #7f849c;
      $overlay0: #6c7086;
      $surface2: #585b70;
      $surface1: #45475a;
      $surface0: #313244;
      $base: #1e1e2e;
      $mantle: #181825;
      $crust: #11111b;

      * {
          all: unset;
      }

      .timewidget {
          font-family: "ZedMono";
          font-size: 64px;
          font-weight: bold;
          color: $maroon;
      }
    '';
  };
}
