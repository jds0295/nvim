require'nvim-treesitter.configs'.setup{
	--parsers to use
	ensure_installed = {"go", "lua"},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
