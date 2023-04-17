-- change shell stuff depending on shell
vim.cmd([[
set shell=cmd
set shellcmdflag=/k
set shellquote=\"
set shellxquote=
]])


require("base")


-- vim.cmd.colorscheme("tokyonight-night")
vim.cmd.colorscheme("carbonfox")

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.termguicolors = true

