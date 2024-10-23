return {
  formatters_by_ft = {
    lua = { "stylua" },
    vue = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascriptreact = { "prettier" },
    json = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    go = { "gofmt" },
  },
  -- Set up format-on-save
  format_on_save = { timeout_ms = 3000, quiet = false, lsp_fallback = "fallback", async = false },
}
