local options = {
  sync_root_with_cwd = true,
  git = { enable = true, ignore = true },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        git = {
          unmerged = "",
          renamed = "➜",
          deleted = "",
          ignored = "◌",
          -- Status type
          untracked = "U",
          unstaged = "",
          staged = "✓",
        },
        folder = {
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
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
