require "nvchad.mappings"

-- n, v, i, t = normal, visual, insert, text

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- nvimtree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
map("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse folders in explorer" })
-- telescope
map("n", "<leader><leader>", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Git Status" })
map("n", "<leader>gs", "<cmd>Telescope git_commits<CR>", { desc = "Git Commits" })
map("n", "<leader>ts", "<cmd>Telescope themes<CR>", { desc = "Theme Switcher" })
map("n", "<leader>ts", "<cmd>Telescope treesitter<CR>", { desc = "Telescope TreeSitter" })

-- lsp
map("n", "K", vim.lsp.buf.hover, { desc = "Show line diagnostics" })

-- Insert mode
map("i", "jk", "<ESC>")
map("i", "<C-l>", "<Right>")
map("i", "<C-h>", "<Left>")
map("i", "<C-k>", "<Up>")
map("i", "<C-j>", "<Down>")

-- Conform
map("n", "<leader>fm", "<cmd>FormatFile<CR>", { desc = "Format file" })
