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
                categories = [ "Development" "IDE" ];
            };
        };
    };
}
