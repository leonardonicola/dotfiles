local options = {
  sync_root_with_cwd = true,
  git = { enable = true, ignore = true },
  renderer = {
    highlight_git = false,
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        git = {
          untracked = "U",
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
