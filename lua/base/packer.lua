
-- Qonly required if you have packer configured as `opt`

return require("packer").startup(function(use) 
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.0",
		-- or			       , branch = "0.1.x",
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use {
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd.colorscheme("rose-pine")
		end
	}

	use {
		"nvim-treesitter/nvim-treesitter", 
		{ run = ":TSUpdate" }
	}
	use { "nvim-treesitter/playground" }
	use { "theprimeagen/harpoon" }
	use { "mbbill/undotree" }
	use { "tpope/vim-fugitive" }

	use { 'neoclide/coc.nvim', branch = 'release' }
	
	use { 
		"iamcco/markdown-preview.nvim",
		{ run = function() vim.fn["mkdp#util#install"]() end }
	}

	use { 
		"nvim-neo-tree/neo-tree.nvim", 
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		} 
	}
end)
