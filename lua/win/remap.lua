vim.g.mapleader=" "


vim.keymap.set("n", "<leader>.", function() vim.cmd("NvimTreeToggle") end)
vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<C-h>","<C-w><C-h>")
vim.keymap.set("n", "<C-l>","<C-w><C-l>")
vim.keymap.set("n", "<C-j>","<C-w><C-j>")
vim.keymap.set("n", "<C-k>","<C-w><C-k>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


vim.keymap.set("x", "p" , "\"_dP")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


vim.keymap.set("n", "<C-Space>" , ":NvimTreeToggle<CR>")

vim.keymap.set("n", "J", "mzJ`z")
