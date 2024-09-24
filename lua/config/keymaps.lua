-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)

-- vim.keymap.del("n", "<C-d>", opts)

-- vim.keymap.del("n", "<C-u>", opts)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
