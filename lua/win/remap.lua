vim.g.mapleader=" "

vim.keymap.set("n", "<leader>.", function() vim.cmd("NvimTreeToggle") end)
vim.keymap.set("i", "jj", "<Esc>")

-- omnisharp remappings
vim.keymap.set("n", "gd", vim.cmd.OmniSharpGotoDefinition)
vim.keymap.set("n", "<leader>fu", vim.cmd.OmniSharpFindUsages)
vim.keymap.set("n", "<leader>fi", vim.cmd.OmniSharpImplementations)

vim.keymap.set("n", "<C-h>","<C-w><C-h>")
vim.keymap.set("n", "<C-l>","<C-w><C-l>")
vim.keymap.set("n", "<C-j>","<C-w><C-j>")
vim.keymap.set("n", "<C-k>","<C-w><C-k>")



