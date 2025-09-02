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
    path = "/home/${user}/.dotfiles/assets/wallpapers/STRAY_KITTY_CLUB-pink.png";
  };
  self = self;
}
