-- Enable termguicolors
vim.o.termguicolors = true

-- Set up bufferline
--require("bufferline").setup{}
require('bufferline').setup{
	options = {
 		mode = 'tabs',
 		diagnostics = 'coc',
 		offsets = {
 			{
 				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				Separator = true,
			},
		},
	},
 }
