require("lint").linters_by_ft = {
  javascript = { "biomejs", "eslint" },
  typescript = { "biomejs", "eslint" },
  typescriptreact = { "biomejs" },
  javascriptreact = { "biomejs" },
  vue = { "eslint" },
  lua = { "luacheck" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  group = vim.api.nvim_create_augroup("lint", { clear = true }),
  callback = function()
    require("lint").try_lint()
  end,
})
