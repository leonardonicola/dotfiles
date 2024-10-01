return {
  formatters_by_ft = {
    lua = { "stylua" },
    vue = { { "prettierd", "biome" } },
    javascript = { { "prettierd", "biome" } },
    typescript = { { "prettierd", "biome" } },
    go = { "gofmt" },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    lsp_fallback = true,
  },
  format_after_save = {
    lsp_fallback = true,
  },
  log_level = vim.log.levels.ERROR,
  -- Conform will notify you when a formatter errors
  notify_on_error = true,
}
