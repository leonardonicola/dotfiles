return {
  timeout = 500,
  render = "wrapped-compact",
  max_width = 60,
  background_colour = "#000000",
  on_open = function(win)
    vim.api.nvim_win_set_config(win, { focusable = false })
  end
}
