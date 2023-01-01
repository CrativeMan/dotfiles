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
    path = "/home/${user}/.dotfiles/assets/wallpapers/a_motorcycle_parked_outside_a_restaurant.jpg";
  };
  self = self;
}
