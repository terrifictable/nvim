return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"


    --[[==========]]--
    --[[  THEMES  ]]--
    --[[==========]]--
    use { "zefei/vim-colortuner" }
    use { "morhetz/gruvbox", as = "gruvbox" }
    use { "EdenEast/nightfox.nvim", as = 'nightfox' }
    use { "folke/tokyonight.nvim", as = 'tokyonight' }
    use { "norcalli/nvim-colorizer.lua" }
    -- use { "navarasu/onedark.nvim", as = 'onedark' }
    -- use { "rose-pine/neovim", as = 'rose-pine' }
    -- use { "sjl/badwolf", as = "badwolf" }

    
    --[[=======]]--
    --[[  LSP  ]]--
    --[[=======]]--
	-- use { "neoclide/coc.nvim", branch = 'release' }
    use { "ray-x/lsp_signature.nvim" }
    use { "jayp0521/mason-null-ls.nvim" }
    use { "jose-elias-alvarez/null-ls.nvim" }
    use { "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } }
	use { "VonHeikemen/lsp-zero.nvim",
		requires = {
			{"neovim/nvim-lspconfig"},
			{"williamboman/mason.nvim"},
			{"williamboman/mason-lspconfig.nvim"},

			{"onsails/lspkind.nvim"},
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-buffer"},
			{"hrsh7th/cmp-path"},
            -- {"hrsh7th/cmp-cmdline"},
            {"saadparwaiz1/cmp_luasnip"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"hrsh7th/cmp-nvim-lua"},

			{"L3MON4D3/LuaSnip"},
			{"rafamadriz/friendly-snippets"},
		},
	}


    --[[=============]]--
    --[[  LANGUAGES  ]]--
    --[[=============]]--
    use { "Shirk/vim-gas" }
    use { 'ray-x/go.nvim' }
    use { "alaviss/nim.nvim" }
    use { "neovimhaskell/haskell-vim" }


    --[[======]]--
    --[[  UI  ]]--
    --[[======]]--
    use { "mbbill/undotree" }
    use { "ray-x/guihua.lua" }
    use { "David-Kunz/markid" }
	use { "folke/trouble.nvim" }
    use { "rcarriga/nvim-notify" }
    use { "akinsho/toggleterm.nvim" }
    use { "lewis6991/gitsigns.nvim" }
    use { "kyazdani42/nvim-web-devicons" }
    use { "theHamsta/nvim-dap-virtual-text" }
    -- use { "simrat39/symbols-outline.nvim" }
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
	use { "startup-nvim/startup.nvim", requires = { "nvim-lua/plenary.nvim" } }
    use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }
    use { "akinsho/bufferline.nvim", requires = { "nvim-tree/nvim-web-devicons" } }
	use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } }
    use { "nvim-telescope/telescope-packer.nvim", requires = { 'nvim-telescope/telescope.nvim' } }
    use { "nvim-telescope/telescope-project.nvim", requires = { "nvim-telescope/telescope.nvim" } }
    use { "nvim-telescope/telescope-ui-select.nvim", requires = { 'nvim-telescope/telescope.nvim' } }
	use { "nvim-telescope/telescope-file-browser.nvim", requires = { "nvim-telescope/telescope.nvim" } }
	use { "nvim-neo-tree/neo-tree.nvim", 
	    branch = "main",	
        requires = {
			    "nvim-lua/plenary.nvim",
			    "nvim-tree/nvim-web-devicons",
			    "MunifTanjim/nui.nvim",
		   },
    }


    --[[=========]]--
    --[[  OTHER  ]]--
    --[[=========]]--
    use { "hrsh7th/vim-vsnip" }
    use { "tpope/vim-surround" }
    use { "BurntSushi/ripgrep" }
    use { "tpope/vim-dispatch" }
	use { "mfussenegger/nvim-dap" }
    use { "numToStr/Comment.nvim" }
    use { "windwp/nvim-autopairs" } 
    use { "windwp/nvim-ts-autotag" }
    use { "folke/todo-comments.nvim" }
	use { "rest-nvim/rest.nvim", requires = { "nvim-lua/plenary.nvim" } }
	use { "iamcco/markdown-preview.nvim", { run = function() vim.fn["mkdp#util#install"]() end } } 
    -- use { "junegunn/fzf.vim", run = function() vim.fn["fzf#install"]() end }
end)

