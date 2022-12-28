
require("bufferline").setup{}

vim.keymap.set("n", "bp", vim.cmd.BufferLinePick)
vim.keymap.set("n", "br", vim.cmd.BufferLineCloseRight)
vim.keymap.set("n", "bl", vim.cmd.BufferLineCloseLeft)

