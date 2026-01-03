{
  plugins.lsp = {
    enable = true;
    servers = {
      clangd.enable = true;
      java_language_server.enable = true;
      nixd.enable = true;
      gopls.enable = true;
      rust_analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
      };
    };
  };
}
