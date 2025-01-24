{ config, pkgs, ... }:

let
  myAliases = {
    # Nix stuff
    rebuild = "ga . && sudo nixos-rebuild switch --flake ~/.dotfiles/ && hrebuild";
    rebuildh = "ga . && sudo nixos-rebuild switch --flake ~/.dotfiles/";
    hrebuild = "ga . && home-manager switch --flake ~/.dotfiles/";
    nixup = "cd ~/.dotfiles && sudo nix flake update";
    nixcl = "sudo nix-collect-garbage && sudo nix-collect-garbage -d && nix-collect-garbage && nix-collect-garbage -d";
    or = "omz reload";
    # Gradle
    grun = "./gradlew run";
    # misc
    c = "xclip -selection clipboard";
    ":q" = "exit";
    n = "fastfetch";
    hyprshot = "~/Coding/SideProjects/Hyprshot/hyprshot";
    ".." = "cd ..";
    ll = "ls -l";
    cat = "bat";
    cd = "z";
    ggraph = "git log --graph --oneline --decorate --color";
    # make
    make = "time make";
    mclean = "make clean";
    # STUPID FIXES
    lxappearance = "GDK_BACKEND=x11 lxappearance";
    zed = "zeditor";
    rrip = "sudo docker run --rm -v $PWD:/app/ -u $(id -u):$(id -g) ghcr.io/mahesh-hegde/rrip:latest";
  };

in
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    history.size = 100000;

    envExtra = ''
    global_search() {
        find . -type f | grep -v '.git\|node_modules' | xargs grep -Hn "$1" 2>/dev/null | fzf
    }

    alias gs='global_search'
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "geoffgarside";
    };
    shellAliases = myAliases;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
