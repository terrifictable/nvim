-- print("Hello "..os.getenv("USER"))
vim.keymap.set('n', "<space>rs", "<cmd>IronRepl<cr>")


-- change shell stuff depending on shell
vim.cmd([[
set shell=powershell
set shellcmdflag=-command
set shellquote=\"
set shellxquote=
]])



require("base")

vim.cmd.colorscheme("carbonfox")


-- vim.opt.nu = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.termguicolors = true

