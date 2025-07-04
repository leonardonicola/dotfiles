-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.colorify = {
  enabled = true,
}

M.base46 = {
  theme = "obsidian-ember",
  transparency = true,
}

M.lsp = {
  signature = false,
}

M.mason = {
  pkgs = {
    "bash-language-server",
    "gopls",
    "shfmt",
    "luacheck",
    "prettierd",
    "biome",
    "eslint_d",
    "css-lsp",
    "html-lsp",
    "json-lsp",
    "stylua",
    "tailwindcss-language-server",
    "lua-language-server",
    "vue-language-server",
    "vtsls",
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
  cmp = {
    icons = true,
    format_colors = { tailwind = true },
    style = "flat_dark", -- default/flat_light/flat_dark/atom/atom_colored
  },

  telescope = { style = "borderless" }, -- borderless / bordered
  statusline = {
    order = { "mode", "file", "lsp_msg", "%=", "diagnostics", "cwd" },
    modules = nil,
    theme = "vscode_colored",
  },

  tabufline = {
    order = { "buffers", "tabs" },
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
