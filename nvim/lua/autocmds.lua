local autocmd = vim.api.nvim_create_autocmd

vim.o.autoread = true
autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = function()
    vim.lsp.buf.format()
  end,
})

autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" }
})
