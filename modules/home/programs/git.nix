{ vars, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user.name = vars.gitUser;
      user.email = vars.email;
    };
    userName = vars.gitUser;
    userEmail = vars.email;
  };
}
