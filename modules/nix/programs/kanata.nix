{ ... }:

{
  services.kanata = {
    enable = true;
    keyboards."usb-SINOWEALTH_GXT_970_Gaming_Mouse-if01-event-kbd".config = ''
      (defsrc
        caps
      )

      (defalias
        escctrl (tap-hold 100 100 esc lctrl)
      )

      (deflayer base
        @escctrl
      )
    '';
  };
}
