require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"pyright",
		"rust_analyzer",
		"clangd",
		"gopls",
	},
})

require("mason-null-ls").setup({
	ensure_installed = {
		"gitlint",
		"habolint",
		"cpplint",
		"pylint",
		-- "clang_format"
	},
})


