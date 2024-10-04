return {
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = require "configs.nvimtree",
  },
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile", "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = require "configs.conform",
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lint"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    opts = require "configs.lspconfig",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = require "configs.treesitter",
  },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = require "configs.telescope",
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "typescript",
      "javascript",
      "typescriptreact",
      "javascriptreact",
      "vue",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
