require "nvchad.autocmds"

-- Treat JSON files as JSONC so comments are accepted.
vim.filetype.add {
  extension = {
    json = "jsonc",
  },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
