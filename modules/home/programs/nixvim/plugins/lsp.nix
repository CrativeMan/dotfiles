{
  plugins.lsp = {
    enable = true;

    keymaps = {
      lspBuf = {
        "gd" = "definition";
        "gD" = "declaration";
        "K" = "hover";
        "gr" = "references";
        "<leader>rn" = "rename";
        "<leader>ca" = "code_action";
        "<leader>D" = "type_definition";
      };
      diagnostic = {
        "[d" = "goto_prev";
        "]d" = "goto_next";
        "<leader>d" = "open_float";
      };
    };

    servers = {
      clangd.enable = true;
      java_language_server.enable = true;
      nixd.enable = true;
      gopls.enable = true;
    };
  };
}
