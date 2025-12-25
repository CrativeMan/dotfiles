{pkgs, ...}: {
  programs.java = {
    enable = true;
    package = pkgs.temurin-bin;
  };

  environment.systemPackages = with pkgs; [
    corretto21
    python3
    libaacs
    libbluray
  ];
}
