{ config, pkgs, ... }:

let 
  myAliases = {
    # Nix stuff
    nixconfig = "cd ~/.dotfiles";
    rebuild = "ga . && sudo nixos-rebuild switch --flake ~/.dotfiles/ && hrebuild";
    hrebuild = "ga . && home-manager switch --flake ~/.dotfiles/";
    nixupdate = "cd ~/.dotfiles && sudo nix flake update";
    nix-clean = "sudo nix-collect-garbage && sudo nix-collect-garbage -d && nix-collect-garbage && nix-collect-garbage -d";
    or = "omz reload";
    sdown = "~/.config/waybar/shutdown.sh";
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
    cd = "z";

    cproj = "cd ~/dev/cproj/ && python main.py";
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

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
  
}
