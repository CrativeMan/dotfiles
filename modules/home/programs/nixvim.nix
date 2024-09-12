{inputs, pkgs,...}:
{
    imports = [nixvim.homeManagerModules.nixvim];
    
    programs.nixvim = {
        enable = true;
    };
}
