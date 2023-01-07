
function DoColors(color)
	color = color or vim.colorscheme
    if (color == "carbonfox") then -- there is probably a better way to do this, but i dont care
        color = nil
    end
    vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "#0e0e0e" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#0e0e0e" })
end



DoColors()


