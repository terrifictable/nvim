local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local keymap = vim.keymap

local onattach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
	keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
	keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
	keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts) -- see available code actions
	keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts) -- smart rename
	keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts) -- show diagnostics for cursor
	keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
end

local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig["sumneko_lua"].setup({
	capabilities = capabilities,
	on_attach = onattach,
	settings = { -- custom settings for lua
		Lua = {
			-- make the language server recognize "vim" global
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- make language server aware of runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

lspconfig["pyright"].setup({
	capabilities = capabilities,
	on_attach = onattach,
})

lspconfig["rust_analyzer"].setup({
	capabilities = capabilities,
	on_attach = onattach,
})

lspconfig["clangd"].setup({
	capabilities = capabilities,
	on_attach = onattach,
})

lspconfig["gopls"].setup({
	capabilities = capabilities,
	on_attach = onattach,
})

