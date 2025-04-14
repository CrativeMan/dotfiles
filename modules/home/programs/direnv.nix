{ pkgs, ... }:

{
    programs.direnv = {
        enable = true;
        nix-direnv.enable = true;
        enableZshIntegration = true;
        config = {
            global = {
                log_format = "-";
                log_filter = "^$";
            };
        };
    };
}
