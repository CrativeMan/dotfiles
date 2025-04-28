{...}: let
  myAliases = {
    # Nix stuff
    rebuild = "cd ~/.dotfiles && ga . && nixr && homer";
    nixr = "cd ~/.dotfiles && ga . && sudo nixos-rebuild switch --flake ~/.dotfiles/";
    homer = "cd ~/.dotfiles && ga . && home-manager switch --flake ~/.dotfiles/";
    nixup = "cd ~/.dotfiles && sudo nix flake update";
    nixgc = "sudo nix-collect-garbage && sudo nix-collect-garbage -d && nix-collect-garbage && nix-collect-garbage -d";
    # misc
    blahaj = "nix run nixpkgs#display3d ~/Documents/blahaj/blahaj.obj";
    c = "xclip -selection clipboard";
    ":q" = "exit";
    ".." = "cd ..";
    ll = "ls -l";
    cat = "bat";
    cd = "z";
    ggraph = "git log --graph --oneline --decorate --color";
    gi = "git add . && git commit -m \"initial commit\" ";
    envrc = "echo \"use flake\" > .envrc && direnv allow";
    # make
    make = "time make";
    # STUPID FIXES
    zed = "zeditor";
    rrip = "sudo docker run --rm -v $PWD:/app/ -u $(id -u):$(id -g) ghcr.io/mahesh-hegde/rrip:latest";
  };
in {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    history.size = 20000;

    #initContent = ''
    #  hyfetch
    #'';

    envExtra = ''
      global_search() {
          find . -type f | grep -v '.git\|node_modules' | xargs grep -Hn "$1" 2>/dev/null | fzf
      }

      alias gs='global_search'
    '';

    oh-my-zsh = {
      enable = true;
      plugins = ["git"];
      theme = "geoffgarside";
    };
    shellAliases = myAliases;
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
}
