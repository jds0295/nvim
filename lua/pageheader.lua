-- Enable termguicolors
vim.o.termguicolors = true

-- Set up bufferline
--require("bufferline").setup{}
require('bufferline').setup{
	options = {
 		mode = 'buffers',
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
