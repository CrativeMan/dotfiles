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
    # flake files copy
    cenv = "/home/crative/.config/flake-files/c.sh";
    cppenv = "/home/crative/.config/flake-files/cpp.sh";
  };

in
{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "crative";
  home.homeDirectory = "/home/crative";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

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

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
