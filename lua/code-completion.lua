-- pop up frame with the suggestion 
-- completeopt is used to manage code suggestions format
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert', 'preview'}
vim.opt.shortmess = vim.opt.shortmess + { c = true }

local cmp = require'cmp'

cmp.setup({
	-- Configurations
	-- Sources are installed that can be used for code suggestions
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp', keyword_length = 3},
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'nvim_lua', keyword_length = 2},
		{ name = 'buffer',keyword_length = 2 },
		{ name = 'vsnip', keyword_length = 2},
	},
	-- formatting
	formatting = {
		fields = {'menu', 'abbr', 'kind'},
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = 'λ',
				vsnip = '>',
				buffer = 'b',
				path = 'p'
			}
			item.menu = menu_icon[entry.source.name]
			return item
			end,
	},
	-- Window styling
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	-- Mappings 
	mapping = {
		['<C-Space>'] = cmp.mapping.complete(), -- to bring up the code completion at current cursor
		['<Tab>'] = cmp.mapping.select_next_item(), -- Move to next previous entry in the list
		['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Move to previous entry in the list
		['<C-e>'] = cmp.mapping.close(), -- to close the text complete popup
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}) -- insert the cirrently selected suggesion

	},
	
})
