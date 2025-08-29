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
  hl_override = {

    NvimTreeFolderIcon = { fg = "#6c757d" }, -- grey folder icon
    NvimTreeFolderName = { fg = "#ced4da" }, -- white text
    NvimTreeOpenedFolderName = { fg = "#b9b9b9", italic = true },
    NvimTreeEmptyFolderName = { fg = "#8e8e8e" },
    NvimTreeOpenedFolderIcon = { fg = "#6c757d" },
    NvimTreeNormalNC = { fg = "#ced4da" },

    -- Git status colors
    NvimTreeGitDirty = { fg = "#ffe6a7" },  -- slight yellow
    NvimTreeGitStaged = { fg = "#1dd260" }, -- keep green for staged
    NvimTreeGitNew = { fg = "#ffe6a7" },
    NvimTreeGitRenamed = { fg = "#ffe6a7" },
    NvimTreeGitDeleted = { fg = "#E85D75" }, -- keep red for deleted
    NvimTreeGitIgnored = { fg = "#1f1f1f" },

    -- Arrow colors (also grey to match)
    NvimTreeFolderArrowClosed = { fg = "#ced4da" },
    NvimTreeFolderArrowOpen = { fg = "#ced4da" },
  }
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
    order = { "mode", "file", "git", "%=", "lsp", "diagnostics", "cwd" },
    theme = "vscode_colored",
    enabled = true
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
