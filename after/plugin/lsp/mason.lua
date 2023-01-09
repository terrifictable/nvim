require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"sumneko_lua",
		"pyright",
		"rust_analyzer",
		"clangd",
		"gopls",
	},
})



require("mason-null-ls").setup({
	ensure_installed = {
		-- "prettier",
		-- "stylua",
		"gitlint",
		"habolint",
		"cpplint",
		"pylint",
		-- "clang_format"
	},
})


