{pkgs, ...}: {
  extraPlugins = [ pkgs.vimPlugins.plenary-nvim ];

  plugins.bufferline.enable = true;
  plugins.lualine.enable = true;
  plugins.nvim-autopairs.enable = true;
  plugins.comment-nvim.enable = true;
  plugins.trouble.enable = true;
  plugins.which-key.enable = true;

  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save.__raw = ''
        function(bufnr)
          return {
            timeout_ms = 500,
            lsp_format = "fallback",
            options = {
              tabSize = vim.bo[bufnr].tabstop,
              insertSpaces = vim.bo[bufnr].expandtab,
            },
          }
        end
      '';
    };
  };

  plugins.todo-comments.enable = true;
  plugins.nvim-surround.enable = true;

  plugins.indent-blankline.enable = true;
  plugins.direnv.enable = true;
  plugins.markdown-preview.enable = true;
  plugins.web-devicons.enable = true;
  plugins.cmp-nvim-lsp.enable = true;
  plugins.friendly-snippets.enable = true;
  plugins.luasnip.enable = true;
}
