local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local keymap = vim.keymap

local onattach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	keymap.set("n", "gD",           function() vim.lsp.buf.declaration() end,    opts) -- got to declaration
	keymap.set("n", "gd",           "<cmd>Lspsaga peek_definition<CR>",          opts) -- see definition and make edits in window
    keymap.set("n", "K",            function() vim.lsp.buf.hover() end,          opts)
	keymap.set("n", "gi",           function() vim.lsp.buf.implementation() end, opts) -- go to implementation
	keymap.set("n", "<leader>vca",  function() vim.lsp.buf.code_action() end,    opts) -- see available code actions
	keymap.set("n", "<leader>rn",   function() vim.lsp.buf.rename() end,         opts) -- smart rename
	keymap.set("n", "<leader>vd",   function() vim.diagnostic.open_float() end,  opts) -- show diagnostics for cursor
	keymap.set("n", "<C-h>",        function() vim.lsp.buf.signature_help() end, opts)
end


local capabilities = cmp_nvim_lsp.default_capabilities()


lspconfig["pyright"].setup{
    capabilities = capabilities,
    on_attach = onattach,
}

lspconfig["rust_analyzer"].setup{
    capabilities = capabilities,
    on_attach = onattach,
}

lspconfig["clangd"].setup{
    capabilities = capabilities,
    on_attach = onattach,
    cmd = {
        "clangd",
        "--background-index",
        "--pch-storage=memory",
        "--clang-tidy",
        "--suggest-missing-includes",
        "--all-scopes-completion",
        "--pretty",
        -- "--header-insertion=never",
        -- "-j=4",
        -- "--inlay-hints",
        -- "--header-insertion-decorators"
    },
    filetypes = { "c", "cpp", "objc", "objcpp", "cc", "cxx" },
    init_option = { fallbackFlags = { "-std=c++2a" } },
}

--[ Golang ]--
require("go").setup {
    lsp_cfg = {
        capabilities = capabilities,
    },
}
-- require("go.format").goimport()

lspconfig["gopls"].setup{
    capabilities = capabilities,
    on_attach = function (client, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }

        keymap.set("n", "gD",           function() vim.lsp.buf.declaration() end,    opts) -- got to declaration
        keymap.set("n", "gd",           "<cmd>Lspsaga peek_definition<CR>",          opts) -- see definition and make edits in window
        keymap.set("n", "K",            function() vim.lsp.buf.hover() end,          opts)
        keymap.set("n", "gi",           function() vim.lsp.buf.implementation() end, opts) -- go to implementation
        keymap.set("n", "<leader>vca",  function() vim.cmd("GoCodeAction") end, opts) -- see available code actions
        keymap.set("n", "<leader>rn",   function() vim.cmd("GoRename") end,     opts) -- smart rename
        keymap.set("n", "<leader>vd",   function() vim.diagnostic.open_float() end,  opts) -- show diagnostics for cursor
        keymap.set("n", "<C-h>",        function() vim.lsp.buf.signature_help() end, opts)

        keymap.set("n", "gfs", function() vim.cmd("GoFillStruct") end,  opts)
        keymap.set("n", "gfp", function() vim.cmd("GoFixPlurals") end,  opts)
        keymap.set("n", "gfc", function() vim.cmd("GoFmt") end,         opts)
        keymap.set("n", "gta", function() vim.cmd("GoAddTag") end,      opts)
        keymap.set("n", "gtd", function() vim.cmd("GoRmTag") end,       opts)
        keymap.set("n", "gi",  function() vim.cmd("GoImport") end,      opts)
        keymap.set("n", "gc",  function() vim.cmd("GoCmt") end,         opts)
        keymap.set("n", "gr",  function() vim.cmd("GoGenReturn") end,   opts)
    end,
}


