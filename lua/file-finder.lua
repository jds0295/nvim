-- search files, including hidden
vim.keymap.set('n', '<leader><leader>', ':lua  require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})

-- Live Grep
vim.keymap.set('n', '<leader>fg', ':lua  require"telescope.builtin".live_grep()<CR>', {})


