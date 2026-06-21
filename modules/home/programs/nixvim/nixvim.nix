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

    -- Debounce publishDiagnostics so the LSP clear+republish cycle never blanks the display
    local _diag_timers = {}
    local _orig_diag = vim.lsp.handlers["textDocument/publishDiagnostics"]
    vim.lsp.handlers["textDocument/publishDiagnostics"] = function(err, result, ctx, config)
      if not result then return _orig_diag(err, result, ctx, config) end
      local bufnr = vim.uri_to_bufnr(result.uri)
      if _diag_timers[bufnr] then _diag_timers[bufnr]:stop() end
      _diag_timers[bufnr] = vim.defer_fn(function()
        _diag_timers[bufnr] = nil
        _orig_diag(err, result, ctx, config)
      end, 100)
    end
  '';
}
