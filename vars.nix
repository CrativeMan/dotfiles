{self ? null}: let
  user = "crative";
in {
  inherit user;
  gitUser = "CrativeMan";
  email = "hannig.sebi@gmail.com";
  editor = "nvim";
  dir = {
    home = "/home/${user}";
    flake = "/home/${user}/.dotfiles";
  };
  wallpaper = {
    path = "/home/${user}/.dotfiles/assets/wallpapers/2CB.png";
  };
  self = self;
}
