local lsp = require("lsp-zero")
lsp.preset("recommended")
-- lsp.preset("minimal")

lsp.ensure_installed {
    -- "sumneko_lua",
    "pyright",
    "rust_analyzer",
    "clangd",
    "gopls"
}


local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-Up>']    = cmp.mapping.select_prev_item(cmp_select),
	['<C-Down>']  = cmp.mapping.select_next_item(cmp_select),
	['<C-y>']     = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

cmp.setup {
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    }
}

cmp.setup.filetype("gitcommit", {
    sources = cmp.config.sources({
        { name = "cmp_git" },
    }, {
        { name = "buffer" },
    })
})

lsp.setup_nvim_cmp { mapping = cmp_mappings }
lsp.setup()


vim.diagnostic.config {
    virtual_text = true,
    update_in_insert = true,
}


require("lsp_signature").setup {
    hint_prefix = "",
    floating_window = false
}

