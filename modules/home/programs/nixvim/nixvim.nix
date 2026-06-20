{
  enable = true;
  enableMan = false; # Has to be false, broken in unstable

  extraConfigLua = ''
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
      float = {
        border = "rounded",
        source = true,
      },
    })
  '';
}
