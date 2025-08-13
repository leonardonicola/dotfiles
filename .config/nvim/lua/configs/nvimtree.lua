return {
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
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
          default = "", -- closed folder
          open = "", -- open folder
          empty = "", -- empty folder
          empty_open = "", -- empty folder open
          symlink = "", -- folder symlink
          symlink_open = "", -- opened symlink
        },
      },
    },
  },
  filesystem_watchers = {
    ignore_dirs = {
      "node_modules",
      "dist",
    },
  },
}
