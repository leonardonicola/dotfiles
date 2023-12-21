return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      styles = {
        sidebars = { "qf", "vista_kind", "terminal", "packer" },
        functions = { bold = true },
        keywords = { bold = true, italic = false },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
