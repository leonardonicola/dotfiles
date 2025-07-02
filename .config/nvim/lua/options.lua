require "nvchad.options"

local opt = {
  encoding = "utf-8",
  fileencoding = "utf-8",

  backup = false,
  hlsearch = true,
  scrolloff = 5,
  backspace = "indent,eol,start",
  backupskip = { "/tmp/*" },
  linebreak = true,
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  smartindent = true,
  smartcase = true,
  inccommand = "split",
  ignorecase = true,
  relativenumber = true,
}

-- Loop to apply settings in vim
for k, v in pairs(opt) do
  vim.opt[k] = v
end
