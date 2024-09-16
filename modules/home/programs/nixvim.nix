{inputs, pkgs,...}:

{
    imports = [inputs.nixvim.homeManagerModules.nixvim];

    programs.nixvim = {
        enable = true;
        defaultEditor = true;
        enableMan = true;
        viAlias = true;
        vimAlias = true;
        colorschemes.gruvbox = {
            enable = true;
        };
        plugins.lualine = {
            enable = true;
        };
        options = {
            number = true;
        };
    };
}
