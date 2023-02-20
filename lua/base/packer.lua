
return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use { "rose-pine/neovim", as = 'rose-pine' }
    use { "folke/tokyonight.nvim", as = 'tokyonight' }
    use { "EdenEast/nightfox.nvim", as = 'nightfox' }
    use { "navarasu/onedark.nvim", as = 'onedark' }

    -- use { "edluffy/hologram.nvim" }
    use { "wakatime/vim-wakatime" }
    use { "stevearc/vim-arduino" }
    use { "nvim-orgmode/orgmode" }
    use { "wsdjeg/vim-assembly" }
    use { "tpope/vim-surround" }
    use { "neomake/neomake" }
    use { "normen/vim-pio" }

    use { "junegunn/fzf.vim" }
	use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }
	use { "nvim-telescope/telescope-file-browser.nvim", requires = { "nvim-telescope/telescope.nvim" } }
    use { "nvim-telescope/telescope-project.nvim", requires = { "nvim-telescope/telescope.nvim" } }
    -- use { "nvim-telescope/telescope-dap.nvim", requires = { 'nvim-telescope/telescope.nvim' } }
    use { "nvim-telescope/telescope-packer.nvim", requires = { 'nvim-telescope/telescope.nvim' } }
    use { "nvim-telescope/telescope-ui-select.nvim", requires = { 'nvim-telescope/telescope.nvim' } }
    use { "startup-nvim/startup.nvim", requires = { "nvim-lua/plenary.nvim" } }
    use { "kdheepak/lazygit.nvim", requires = { "nvim-lua/plenary.nvim" } }


    use { "alaviss/nim.nvim" }
    use { "vlime/vlime", opt = true, as = "vlime", rtp = "vim/" }
    use { "kovisoft/paredit" }
    use { "folke/trouble.nvim" }

    use { "hkupty/iron.nvim" }

    -- use { "neoclide/coc.nvim", branch = 'release' } // removed because i cant get coc installed on windows
    use { "jose-elias-alvarez/null-ls.nvim" }
    use { "jayp0521/mason-null-ls.nvim" }
    use { "nvim-treesitter/playground" }
    use { "lewis6991/gitsigns.nvim" }
    use { "numToStr/Comment.nvim" }
    use { "theprimeagen/harpoon" }
    use { "rcarriga/nvim-notify" }
    use { "tpope/vim-fugitive" }
    use { "David-Kunz/markid" }
    use { "nvim-neorg/neorg" }
    use { "preservim/tagbar" }
	use { "mbbill/undotree" }

    use { "windwp/nvim-ts-autotag" }
    use { "windwp/nvim-autopairs" }

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
	  	"VonHeikemen/lsp-zero.nvim",
	  	requires = {
			{"neovim/nvim-lspconfig"},
			{"williamboman/mason.nvim"},
			{"williamboman/mason-lspconfig.nvim"},

            {"onsails/lspkind.nvim"},
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-buffer"},
			{"hrsh7th/cmp-path"},
			{"saadparwaiz1/cmp_luasnip"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"hrsh7th/cmp-nvim-lua"},

			{"L3MON4D3/LuaSnip"},
			{"rafamadriz/friendly-snippets"},
		}
	}


    use { "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons" }
    }

    use { "akinsho/bufferline.nvim",
        requires = { "nvim-tree/nvim-web-devicons" }
    }

    use { "akinsho/toggleterm.nvim" }
    use { "rest-nvim/rest.nvim", requires = { "nvim-lua/plenary.nvim" } }

    -- use { "mfussenegger/nvim-dap" }
    -- use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
end)

