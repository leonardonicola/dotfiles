require "nvchad.options"

local g = {
  dap_virtual_text = true,
  bookmark_sign = "",
  skip_ts_context_commentstring_module = true,
}

-- Loop to apply settings in vim
for k, v in pairs(g) do
  vim.g[k] = v
end

local tabSize = 2
local opt = {
  encoding = "utf-8",
  fileencoding = "utf-8",
  -- Prevent issues with some language servers
  backup = false,
  swapfile = false,
  -- Always show minimum n lines after current line
  scrolloff = 10,
  -- Making sure backspace works as intended
  backspace = "indent,eol,start",
  clipboard = "unnamedplus",
  relativenumber = true,
  -- True color support
  termguicolors = true,
  emoji = true,
  -- Line break/wrap behaviours
  linebreak = true,
  textwidth = 80,
  -- Indentation values
  tabstop = tabSize,
  shiftwidth = tabSize,
  expandtab = true,
  smartindent = true,
  smartcase = true,
  cursorline = true,
  cursorlineopt = "both",
  inccommand = "split",
  ignorecase = true,
}

-- Loop to apply settings in vim
for k, v in ipairs(opt) do
  vim.opt[k] = v
end

vim.opt.relativenumber = true
vim.cmd "hi IlluminatedWordText gui=bold"
vim.cmd "hi IlluminatedWordRead gui=bold"
vim.cmd "hi IlluminatedWordWrite gui=bold"
