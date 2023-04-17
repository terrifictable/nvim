require("nvim-treesitter.configs").setup {
	ensuire_installed = { "help", "c", "c++", "lua", "rust", "go", "python" },
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}


