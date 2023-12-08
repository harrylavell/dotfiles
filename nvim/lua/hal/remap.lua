-- map leader to <Space>
vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- project view
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

-- save and exit
vim.keymap.set("n", "<leader>w", ":w!<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")

-- vertical navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- easy insert and visual escape
vim.keymap.set("i", "jj", "<esc>")
vim.keymap.set("v", "ff", "<esc>")

-- paste without overwritting buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
