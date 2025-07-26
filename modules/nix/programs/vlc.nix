{pkgs, ...}: let
  libbluray = pkgs.libbluray.override {
    withAACS = true;
    withBDplus = true;
    withJava = true;

    libaacs = pkgs.libaacs;
    libbdplus = pkgs.libbdplus;
  };
  myVlc = pkgs.vlc.override {inherit libbluray;};
in {
  environment.systemPackages = [
    myVlc
  ];
}
