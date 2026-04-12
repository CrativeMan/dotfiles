{vars, ...}: {
  programs.git = {
    enable = true;
    signing.format = null;
    settings = {
      user.name = vars.gitUser;
      user.email = vars.email;
    };
  };
}
