{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        {name = "nvim_lsp";}
        {name = "luasnip";}
        {name = "buffer";}
        {name = "nvim_lua";}
        {name = "path";}
      ];
      mapping = {
        "<Tab>".__raw = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        "<S-Tab>".__raw = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<CR>".__raw = "cmp.mapping.confirm({ select = true })";
        "<C-Space>".__raw = "cmp.mapping.complete()";
        "<C-e>".__raw = "cmp.mapping.abort()";
        "<C-d>".__raw = "cmp.mapping.scroll_docs(-4)";
        "<C-f>".__raw = "cmp.mapping.scroll_docs(4)";
      };
    };
  };
}
