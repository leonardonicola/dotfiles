return {
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    opts = require "configs.notify",
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = require "configs.noice",
  },
}
