return {
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = require "configs.nvimtree",
  },
  {
    "andymass/vim-matchup",
    event = "VeryLazy",
  },
  {
    "echasnovski/mini.nvim",
    version = false,
    event = "VeryLazy",
    config = function()
      require("mini.surround").setup()
    end,
  },

  { import = "nvchad.blink.lazyspec" },
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = require "configs.telescope",
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
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
    "neovim/nvim-lspconfig",
    event = { "User FilePost" },
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    lazy = true,
    opts = require "configs.treesitter",
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = true,
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
