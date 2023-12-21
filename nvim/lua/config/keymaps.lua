-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymaps = vim.keymap

keymaps.set("n", "<C-Left>", "<C-w>h", { desc = "Go to left window" })
keymaps.set("n", "<C-Down>", "<C-w>j", { desc = "Go to lower window" })
keymaps.set("n", "<C-Up>", "<C-w>k", { desc = "Go to upper window" })
keymaps.set("n", "<C-Right>", "<C-w>l", { desc = "Go to right window" })

keymaps.set("n", "<S-Left>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
keymaps.set("n", "<S-Right>", "<cmd>bnext<cr>", { desc = "Next buffer" })

keymaps.set("n", "<leader>rn", ":IncRename ")
