{ config, pkgs, ... }:

let 
  myAliases = {
    # Nix stuff
    nixconfig = "cd ~/.dotfiles";
    rebuild = "sudo nixos-rebuild switch --flake ~/.dotfiles/ && hrebuild";
    hrebuild = "home-manager switch --flake ~/.dotfiles/";
    nixupdate = "cd ~/.dotfiles && sudo nix flake update";
    nix-clean = "sudo nix-collect-garbage && sudo nix-collect-garbage -d && nix-collect-garbage && nix-collect-garbage -d";
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
    cat = "bat";
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
