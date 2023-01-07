
return require("packer").startup(function(use)
	use 'wbthomason/packer.nvim'

    use { 'rose-pine/neovim', as = 'rose-pine' }
    use { 'folke/tokyonight.nvim', as = 'tokyonight' }
    use { 'EdenEast/nightfox.nvim', as = 'nightfox' }
    use { 'navarasu/onedark.nvim', as = 'onedark' }


	use { "nvim-telescope/telescope.nvim", requires = { 'nvim-lua/plenary.nvim' } }
	use { "nvim-telescope/telescope-file-browser.nvim" }
    use { "nvim-telescope/telescope-project.nvim" }
    use { "startup-nvim/startup.nvim", requires = { "nvim-lua/plenary.nvim" } }
    use { "kdheepak/lazygit.nvim", requires = { "nvim-lua/plenary.nvim" } }

    use { 'neoclide/coc.nvim', branch = 'release' }
	use { "nvim-treesitter/playground" }
    use { "numToStr/Comment.nvim" }
	use { "theprimeagen/harpoon" }
    use { "rcarriga/nvim-notify" }
    use { "tpope/vim-fugitive" }
    use { "preservim/tagbar" }
	use { "mbbill/undotree" }


	use {
		"iamcco/markdown-preview.nvim",
		{ run = function() vim.fn["mkdp#util#install"]() end }
	}
    use {
        "nvim-treesitter/nvim-treesitter",
        { run = ":TSUpdate" }
    }


	use {
		"nvim-neo-tree/neo-tree.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
        }
	}

	use {
	  	'VonHeikemen/lsp-zero.nvim',
	  	requires = {
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}


    use {
        "nvim-lualine/lualine.nvim",
        requires = { 'kyazdani42/nvim-web-devicons' }
    }

    use {
        'akinsho/bufferline.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }

    use { "akinsho/toggleterm.nvim" }
    use { "rest-nvim/rest.nvim", requires = { "nvim-lua/plenary.nvim" } }

    use { 'mfussenegger/nvim-dap' }
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }


end)

