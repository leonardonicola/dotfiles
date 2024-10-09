return {
  {
    "nvim-tree/nvim-web-devicons",
    opts = function()
      return require "configs.devicons"
    end,
    config = function(_, opts)
      require("nvim-web-devicons").setup(opts)
    end,
  },
}
