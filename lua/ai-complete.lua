-- ##Codeium
-- disable codeium by default using :CodeiumDisable
vim.g.codeium_enabled = false
vim.g.codeium_disable_bindings = 1

-- toggle on and off using F4 key
vim.api.nvim_set_keymap('n', '<F4>', ':CodeiumToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<F4>', '<ESC>:CodeiumToggle<CR>', {noremap = true, silent = true})

-- ##Copilot
-- specify node binary path
vim.g.copilot_node_command = "~/.nvm/versions/node/v18.17.1/bin/node"
-- enable copilot by default
vim.g.copilot_enabled = 1

-- function to toggle on and off
vim.api.nvim_create_user_command("CopilotToggle", function()
	if vim.g.copilot_enabled == 1 then
		vim.cmd("Copilot disable")
	else
		vim.cmd("Copilot enable")
	end
end, { nargs = 0 })


-- toggle on and off using F3 key
vim.keymap.set('n', '<F3>', ':CopilotToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<F3>', '<ESC>:CopilotToggle<CR>', { noremap = true, silent = true })

