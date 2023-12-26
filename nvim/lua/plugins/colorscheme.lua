return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
        functions = { bold = true },
        keywords = { bold = true, italic = false },
      },
      on_colors = function(colors)
        colors.bg_statusline = colors
        .none                              -- To check if its working try something like "#ff00ff" instead of colors.none
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
