return {
  formatters_by_ft = {
    lua = { "stylua" },
    vue = { "prettierd" },
    javascript = { "prettierd", "biome-check" },
    typescript = { "prettierd", "biome-check" },
    typescriptreact = { "biome-check", "prettierd" },
    javascriptreact = { "biome-check", "prettierd" },
    json = { "prettierd" },
    html = { "prettierd" },
    css = { "prettierd" },
    go = { "gofmt" },
    ["_"] = { "trim_whitespace" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
    stop_after_first = true,
  },
}
