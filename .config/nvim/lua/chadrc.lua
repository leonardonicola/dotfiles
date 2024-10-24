-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "poimandres",
  transparency = true,
}

M.mason = {
  pkgs = {
    "bash-language-server",
    "gopls",
    "shfmt",
    "luacheck",
    "prettier",
    "biome",
    "eslint-lsp",
    "css-lsp",
    "html-lsp",
    "json-lsp",
    "stylua",
    "tailwindcss-language-server",
    "lua-language-server",
    "vue-language-server",
    "typescript-language-server",
    "terraform-ls",
  },
}

M.nvdash = {
  load_on_startup = true,

  header = {

    "                     .::.",
    "                  .:'  .:",
    "        ,MMM8&&&.:'   .:'",
    "       MMMMM88&&&&  .:'  ",
    "      MMMMM88&&&&&&:'    ",
    "      MMMMM88&&&&&&      ",
    "    .:MMMMM88&&&&&&      ",
    "  .:'  MMMMM88&&&&       ",
    ".:'   .:'MMM8&&&'        ",
    ":'  .:'                  ",
    "'::'  arch btw           ",
    "                         ",
    "                         ",
  },
}

M.ui = {
  theme = "poimandres",
  cmp = {
    icons = true,
    lspkind_text = true,
    style = "flat_dark", -- default/flat_light/flat_dark/atom/atom_colored
  },

  telescope = { style = "bordered" }, -- borderless / bordered
  statusline = {
    separator_style = "round",
    theme = "minimal",
    order = nil,
    modules = nil,
  },

  tabufline = {
    enabled = true,
    lazyload = true,
  },

  term = {
    hl = "Normal:term,WinSeparator:WinSeparator",
    sizes = { sp = 0.3, vsp = 0.2 },
    float = {
      relative = "editor",
      row = 0.3,
      col = 0.25,
      width = 0.5,
      height = 0.4,
      border = "single",
    },
  },
}

return M
