-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
    harpoon:list():add()
end)
vim.keymap.set("n", "<C-e>", function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C-t>", function()
    harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-y>", function()
    harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-u>", function()
    harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-n>", function()
    harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
    harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
    harpoon:list():next()
end)

keymap.set("n", "<leader>E", ":Ex<CR>")

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

--telescope keymaps
keymap.set("n", "<leader>C", ":Telescope colorscheme<Return>")
keymap.set("n", "<leader>fs", ":Telescope lsp_document_symbols<Return>")

--CompetiTest
vim.keymap.set("n", "<leader>rt", ":CompetiTest receive testcases<CR>")
vim.keymap.set("n", "<leader>ra", ":CompetiTest add_testcase <CR>")
vim.keymap.set("n", "<leader>rd", ":CompetiTest delete_testcase <CR>")
vim.keymap.set("n", "<leader>re", ":CompetiTest edit_testcase <CR>")
vim.keymap.set("n", "<leader>rr", ":CompetiTest run<CR>")
vim.keymap.set("n", "<leader>rs", ":CompetiTest show_ui<CR>")
vim.keymap.set("n", "<C-c>", ":%y<CR>")
