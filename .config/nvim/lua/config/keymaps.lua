-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- New tab
keymap.set("n", "te", ":tabedit<Return>")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

--Colorscheme picker
keymap.set("n", "<leader>C", ":Telescope colorscheme<Return>")

--CompetiTest
vim.keymap.set("n", "<leader>rt", ":CompetiTest receive testcases<CR>")
vim.keymap.set("n", "<leader>ra", ":CompetiTest add_testcase <CR>")
vim.keymap.set("n", "<leader>rd", ":CompetiTest delete_testcase <CR>")
vim.keymap.set("n", "<leader>re", ":CompetiTest edit_testcase <CR>")
vim.keymap.set("n", "<leader>rr", ":CompetiTest run<CR>")
vim.keymap.set("n", "<leader>rs", ":CompetiTest show_ui<CR>")
vim.keymap.set("n", "<C-c>", ":%y<CR>")
