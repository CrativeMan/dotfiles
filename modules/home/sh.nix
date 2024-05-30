{ config, pkgs, ... }:

let 
  myAliases = {
    # Nix stuff
    nixconfig = "cd ~/.dotfiles";
    rebuild = "sudo nixos-rebuild switch --flake .";
    hrebuild = "home-manager switch --flake .";
    nixupdate = "nixconfig && sudo nix flake update";
    # Vim/Neovim
    vim = "nvim";
    vimconfig = "cd ~/.config/nvim/"; 
    # Gradle
    grun = "./gradlew run";
    # misc
    c = "xclip -selection clipboard";
    ":q" = "exit";
    n = "neofetch";
    hyprshot = "~/Coding/SideProjects/Hyprshot/hyprshot";
    ".." = "cd ..";
    ll = "ls -l";
    # flake files copy
    cenv = "/home/crative/.config/flake-files/c.sh";
    cppenv = "/home/crative/.config/flake-files/cpp.sh";
  };

in
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    history.size = 100000;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "gozilla";
    };
    shellAliases = myAliases;
  };
  
}
