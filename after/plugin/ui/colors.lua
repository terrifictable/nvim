

function DoColors(color)
	color = color or vim.colorscheme

    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "#0e0e0e" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#0e0e0e" })
end


vim.api.nvim_command("command! -nargs=0 DoColors lua DoColors()")

