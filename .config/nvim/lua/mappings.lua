require "nvchad.mappings"

local map = vim.keymap.set

-- general
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<C-a>", "gg<S-v>G")

-- window
map("n", "ss", ":vsplit<Return>")
map("n", "sc", ":clo<Return>")

-- lazygit
map("n", "<leader>gl", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- nvimtree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
map("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse folders in explorer" })

-- telescope
map("n", "<leader><leader>", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "Git Status" })
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "Git Commits" })
map("n", "<leader>ts", "<cmd>Telescope treesitter<CR>", { desc = "Telescope TreeSitter" })

-- lsp
map("n", "K", vim.lsp.buf.hover, { desc = "Show line diagnostics" })

-- Insert mode
map("i", "jk", "<ESC>")
map("i", "<C-l>", "<Right>")
map("i", "<C-h>", "<Left>")
map("i", "<C-k>", "<Up>")
map("i", "<C-j>", "<Down>")

-- notify
map("n", "<Esc>", function()
  require("notify").dismiss()
end, { desc = "dismiss Notify popup and clear hlsearch" })
