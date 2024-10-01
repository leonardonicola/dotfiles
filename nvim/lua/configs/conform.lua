return {
  formatters_by_ft = {
    lua = { "stylua" },
    vue = { { "prettierd", "biome" } },
    javascript = { { "prettierd", "biome" } },
    typescript = { { "prettierd", "biome" } },
    go = { "gofmt" },
  },
  default_format_opts = {
    lsp_format = "fallback",
  },
  log_level = vim.log.levels.ERROR,
  -- Conform will notify you when a formatter errors
  notify_on_error = true,
}
