-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer (Tab)" })
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer (Shift-Tab)" })
vim.keymap.set("n", "<leader>x", "<Cmd>bdelete<CR>", { desc = "Close buffer" })

vim.keymap.set("n", "<A-g>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-g>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("v", "<A-g>", "<Nop>", { noremap = true, silent = true })

vim.keymap.set("n", "<A-f>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-f>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("v", "<A-f>", "<Nop>", { noremap = true, silent = true })
