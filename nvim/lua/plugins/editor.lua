return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_component_configs = {
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
          default = "",
          -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
          -- then these will never be used.
        },
        name = {
          use_git_status_colors = false,
        },
        indent = {
          indent_size = 1,
          with_markers = false,
        },
        git_status = {
          symbols = {
            unmerged  = "",
            renamed   = "➜",
            deleted   = "",
            ignored   = "◌",
            -- Change type
            added     = "U", -- or "✚", but this is redundant info if you use git_status_colors on the name
            modified  = "M", -- or "", but this is redundant info if you use git_status_colors on the name
            -- Status type
            untracked = "U",
            unstaged  = "",
            staged    = "✓",
          }
        },
      }
    }
  }
}
