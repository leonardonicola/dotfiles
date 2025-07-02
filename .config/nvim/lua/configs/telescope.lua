local function find_command()
  if 1 == vim.fn.executable "rg" then
    return { "rg", "--files", "--color", "never", "-g", "!.git" }
  elseif 1 == vim.fn.executable "fd" then
    return { "fd", "--type", "f", "--color", "never", "-E", ".git" }
  elseif 1 == vim.fn.executable "fdfind" then
    return { "fdfind", "--type", "f", "--color", "never", "-E", ".git" }
  elseif 1 == vim.fn.executable "find" and vim.fn.has "win32" == 0 then
    return { "find", ".", "-type", "f" }
  elseif 1 == vim.fn.executable "where" then
    return { "where", "/r", ".", "*" }
  end
end

local actions = require "telescope.actions"

local options = {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "-L",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        preview_width = 0.6,
        results_width = 0.4,
      },
      vertical = {
        mirror = true,
      },
      width = 0.9,
      height = 0.85,
      preview_cutoff = 100,
    },
    file_sorter = require("telescope.sorters").get_fuzzy_file,
    file_ignore_patterns = {
      "node_modules",
      "%.jpg",
      "%.png",
      "%.svg",
      "%.jpeg",
      "%.webp",
      "%.gif",
      "%.git/",
    },
    generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
    path_display = { "smart" },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
    mappings = {
      i = {
        ["<C-Down>"] = actions.cycle_history_next,
        ["<C-Up>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.preview_scrolling_down,
        ["<C-k>"] = actions.preview_scrolling_up,
      },
      n = { ["q"] = actions.close },
    },
  },
  pickers = {
    find_files = {
      find_command = find_command,
      hidden = true,
    },
    live_grep = {
      additional_args = function()
        return { "--hidden" }
      end,
    },
  },
  get_selection_window = function()
    local wins = vim.api.nvim_list_wins()
    table.insert(wins, 1, vim.api.nvim_get_current_win())
    for _, win in ipairs(wins) do
      local buf = vim.api.nvim_win_get_buf(win)
      if vim.bo[buf].buftype == "" then
        return win
      end
    end
    return 0
  end,
  extensions_list = { "themes", "terms" },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
}

return options
