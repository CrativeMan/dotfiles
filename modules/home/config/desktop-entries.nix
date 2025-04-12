{ vars, ... }:

{
    xdg = {
        desktopEntries = {
            "nixos-zed" = {
                name = "NixOs Zed";
                genericName = "NixOs Editor";
                type = "Application";
                exec = "zeditor ${vars.flakeDir}";
                icon = "${vars.self}/assets/icons/nixos-zed.svg";
                terminal = false;
                categories = [ "Development" "IDE" "X-Custom" ];
            };
            "nixos-rebuild" = {
                name = "Rebuild NixOs";
                genericName = "Rebuild";
                exec = "sudo nixos-rebuild switch --flake ${vars.flakeDir}";
                icon = "${vars.self}/assets/icons/nixos-rebuild.svg";
                terminal = true;
                categories = [ "Development" "X-Custom" ];
            };
            "home-manager-rebuild" = {
                name = "Rebuild Home Manager";
                genericName = "Rebuild";
                exec = "home-manager switch --flake ${vars.flakeDir}";
                icon = "${vars.self}/assets/icons/home-manager-rebuild.svg";
                terminal = true;
                categories = [ "Development" "X-Custom" ];
            };
            "planify-quick-add" = {
                name = "Add Todo";
                genericName = "Planify Quick Add";
                exec = "io.github.alainm23.planify.quick-add";
                icon = "${vars.self}/assets/icons/todoist.svg";
                terminal = false;
            };
        };
    };
}
