
vim.g.mapleader = " "
vim.keymap.set("n", "<C-d>", vim.cmd.Ex)



vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>D", ":put =strftime('%a %d-%m-%Y %H:%M:%S%z')<CR>")

vim.keymap.set("n", "<C-x>", vim.cmd.close)

