-- disable netrw

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Better Highlighting
vim.opt.termguicolors = true

require('nvim-tree').setup()
