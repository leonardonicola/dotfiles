local options = {
  sync_root_with_cwd = true,
  git = { enable = true, ignore = true },
  view = {
    side = "right",
    preserve_window_proportions = true,
  },

  renderer = {
    highlight_git = "all",
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = false,
      },
      glyphs = {
        git = {
          untracked = "?",
          unstaged = "M",
        },
      },
    },
  },
  filesystem_watchers = {
    ignore_dirs = {
      "node_modules",
    },
  },
}

return options
