{ vars, ... }:

{
    programs.git = {
        enable = true;
        userName = vars.gitUser;
        userEmail = vars.email;
    };
}
