vim.opt.clipboard = "unnamedplus"
local opt = vim.opt

opt.nu = true
opt.relativenumber = true


opt.tabstop=4
opt.softtabstop=4
opt.shiftwidth=4
opt.expandtab=true

opt.swapfile=false
opt.backup=false
opt.undofile=true



opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

opt.termguicolors = true

opt.updatetime = 50

vim.o.smartcase = true
vim.o.ignorecase = true

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


vim.keymap.set("x", "p" , "\"_dP")


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])




