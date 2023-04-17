vim.g.mapleader = " "

vim.keymap.set("n", "<C-n>", vim.cmd.NeoTreeShowToggle)
vim.keymap.set("n", "<leader>n", function() vim.cmd("enew") end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>D", ":put =strftime('%a %d-%m-%Y %H:%M %z')<CR>")

vim.keymap.set("n", "<C-x>", vim.cmd.close)

