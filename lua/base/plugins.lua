return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

    use { "morhetz/gruvbox", as = "gruvbox" }
	use { "rose-pine/neovim", as = 'rose-pine' }
	use { "folke/tokyonight.nvim", as = 'tokyonight' }
	use { "EdenEast/nightfox.nvim", as = 'nightfox' }
	use { "navarasu/onedark.nvim", as = 'onedark' }
    use { "sjl/badwolf", as = "badwolf" }

    use { "junegunn/fzf.vim", run = function() vim.fn["fzf#install"]() end }
    use { "neovimhaskell/haskell-vim" }
    use { "easymotion/vim-easymotion" }
	use { "folke/todo-comments.nvim" }
    use { "mfussenegger/nvim-jdtls" }
	use { "wakatime/vim-wakatime" }
	use { "nvim-orgmode/orgmode" }
    use { "zefei/vim-colortuner" }
    use { "luochen1990/rainbow" }
    use { "tpope/vim-surround" }
    use { "tpope/vim-dispatch" }
    use { "sbdchd/neoformat" }
    use { "Shirk/vim-gas" }
    use { "junegunn/fzf" }

	use { "hrsh7th/vim-vsnip" }
    use { "ray-x/lsp_signature.nvim" }


	-- use { 'andweeb/presence.nvim' }
	use { 'ray-x/go.nvim' }

    use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }
	use { "nvim-telescope/telescope-file-browser.nvim", requires = { "nvim-telescope/telescope.nvim" } }
	use { "nvim-telescope/telescope-project.nvim", requires = { "nvim-telescope/telescope.nvim" } }
	-- use { "nvim-telescope/telescope-dap.nvim", requires = { 'nvim-telescope/telescope.nvim' } }
	use { "nvim-telescope/telescope-packer.nvim", requires = { 'nvim-telescope/telescope.nvim' } }
	use { "nvim-telescope/telescope-ui-select.nvim", requires = { 'nvim-telescope/telescope.nvim' } }
	use { "startup-nvim/startup.nvim", requires = { "nvim-lua/plenary.nvim" } }
	use { "kdheepak/lazygit.nvim", requires = { "nvim-lua/plenary.nvim" } }


	use { "alaviss/nim.nvim" }
	-- use { "vlime/vlime", lazy = true, as = "vlime", rtp = "vim/" }
	use { "kovisoft/paredit" }
	use { "folke/trouble.nvim" }

	-- use { "hkupty/iron.nvim" }

	use { "neoclide/coc.nvim", branch = 'release' }
	use { "jose-elias-alvarez/null-ls.nvim" }
    use { "simrat39/symbols-outline.nvim" }
	use { "jayp0521/mason-null-ls.nvim" }
	use { "nvim-treesitter/playground" }
	use { "lewis6991/gitsigns.nvim" }
	use { "numToStr/Comment.nvim" }
	use { "theprimeagen/harpoon" }
	use { "rcarriga/nvim-notify" }
	use { "tpope/vim-fugitive" }	
	use { "David-Kunz/markid" }
	use { "nvim-neorg/neorg" }
    -- use { "preservim/tagbar" }
	use { "mbbill/undotree" }

    use { "windwp/nvim-ts-autotag" }
	use { "windwp/nvim-autopairs" }

	use { "iamcco/markdown-preview.nvim", { run = function() vim.fn["mkdp#util#install"]() end } } 
	use { "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } }

    use { "anuvyklack/hydra.nvim" }

	-- use { "nvim-neo-tree/neo-tree.nvim", 
	--     branch = "v2.x",	
    --     requires = {
	-- 		    "nvim-lua/plenary.nvim",
	-- 		    "nvim-tree/nvim-web-devicons",
	-- 		    "MunifTanjim/nui.nvim",
	-- 	   },
    -- }

    use { "nvim-tree/nvim-tree.lua",
        requires = {"nvim-tree/nvim-web-devicons"},
        tag = "nightly";
    }


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

	use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } }
	use { "akinsho/bufferline.nvim", requires = { "nvim-tree/nvim-web-devicons" } }

	use { "akinsho/toggleterm.nvim" }
	use { "rest-nvim/rest.nvim", requires = { "nvim-lua/plenary.nvim" } }

    use { "kyazdani42/nvim-web-devicons" }

	-- use { "mfussenegger/nvim-dap" }
	-- use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
end)

