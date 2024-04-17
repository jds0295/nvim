return require('packer').startup(function(use)
	-- Configuration is going here
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	
	-- Status Bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'nvim-tree/nvim-web-devicons', opt = true
		}
	}

	-- Plugins for code completion i.e lsp stuff
	use 'hrsh7th/nvim-cmp' -- completion plugin (adds completion engine to neovim)
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip' -- vscode snippets
	use 'hrsh7th/cmp-path'	-- filesystem
	use 'hrsh7th/cmp-buffer' -- buffer words
	use 'hrsh7th/vim-vsnip'

	-- Codeium - AI code completion
	use { "Exafunction/codeium.vim" }

	-- copilot - AI code completion from Microsoft
	use { "github/copilot.vim" }

	-- GitSigns for git stuff
	use { "lewis6991/gitsigns.nvim" }

	-- autopairs, auto complete brackets
	use {
		"windwp/nvim-autopairs",
    		config = function() require("nvim-autopairs").setup {} end -- from 'require' should be in its own file for extended config and current format
	}
	
	-- surround, adding brackets, quotes around selected text
	use {
	    "kylechui/nvim-surround",
	    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	    config = function()
	    end
	}

	-- Commenting
	use {
		'numToStr/Comment.nvim',
			require('Comment').setup({
				toggler = {
					line = 'gcc',
					block = 'gbc',
				},
		})
	}

	-- Treesitter for better syntax highlighting
	use {
        	'nvim-treesitter/nvim-treesitter',
	        run = function()
	        	local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
       	     		ts_update()
        	end,
    	}

	-- Nvimtree for file exploring
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, requires a Nerd Font
		}
	}

	-- Which key for displaying keybindings
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}

	-- vim-tmux-navigator for seamless integration with tmux
	use {
		'christoomey/vim-tmux-navigator'
	}

	-- bufferline for open buffers in tabs
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'	   }

	-- Telescope for search
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}	

	-- toggleterm for better terminal integration
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	end}
	
	-- Themes 
	use 'Mofiqul/dracula.nvim'

end)

