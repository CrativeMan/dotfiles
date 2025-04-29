{pkgs, ...}: let
  test = pkgs.writeShellApplication {
    name = "asd-test";
    runtimeInputs = [pkgs.hyprland];
    text = ''
      hyprctl activeworkspace
      echo "Hello, World!"
    '';
  };
in {
  environment.systemPackages = [
    test
  ];
}
