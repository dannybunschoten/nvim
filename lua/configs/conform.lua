local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier", stop_after_first = true },
    html = { "prettier", stop_after_first = true },
    javascript = { "prettier", stop_after_first = true },
    javascriptreact = { "prettier", stop_after_first = true },
    typescript = { "prettier", stop_after_first = true },
    typescriptreact = { "prettier", stop_after_first = true },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
