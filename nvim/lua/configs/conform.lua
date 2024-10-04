return {
  formatters_by_ft = {
    lua = { "stylua" },
    vue = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    go = { "gofmt" },
  },
  -- Set up format-on-save
  format_on_save = { timeout_ms = 2500, lsp_fallback = true, async = false },
  log_level = vim.log.levels.ERROR,
  -- Conform will notify you when a formatter errors
  notify_on_error = true,
}
