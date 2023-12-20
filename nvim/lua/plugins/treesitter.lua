return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "gitignore",
        "vue",
        "http",
        "sql",
        "graphql",
        "css",
        "dockerfile",
        "php",
      },
      autotag = {
        enable = true,
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
