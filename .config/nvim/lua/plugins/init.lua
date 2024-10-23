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
  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
    opts = {},
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    opts = require "configs.lspconfig",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    build = ":TSUpdate",
    lazy = vim.fn.argc(-1) == 0,
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
