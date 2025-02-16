-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

Snacks.toggle.zoom():map("<leader>zo")
Snacks.toggle.zen():map("<leader>Z"):map("<leader>ze")

map("n", "<leader>h", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<leader>j", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<leader>k", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<leader>l", "<C-w>l", { desc = "Go to Right Window", remap = true })
