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
  {
    "echasnovski/mini.icons",
    opts = {},
    specs = {
      { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
    },
    init = function()
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
  },
}
