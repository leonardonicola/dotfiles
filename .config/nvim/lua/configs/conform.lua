return {
  formatters_by_ft = {
    lua = { "stylua" },
    vue = { "prettier" },
    javascript = { "prettier", "biome-check" },
    typescript = { "prettier", "biome-check" },
    typescriptreact = { "biome-check", "prettier" },
    javascriptreact = { "biome-check", "prettier" },
    json = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    php = { "php-cs-fixer" },
    go = { "gofmt" },
  },
  -- Set up format-on-save
  format_on_save = {
    lsp_fallback = true,
    async = false,
    lsp_format = "never",
    stop_after_first = true,
  },
}
