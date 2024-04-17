require('plugins')
require('styling')
-- require('pageheader')
require('code-completion')
require('ai-complete')
require('file-explorer')
require('terminal')
require('statusbar')
require('mason-config')
require('gopls')
require('custom-keys')
require('custom-settings')
require('surround')
require('syntax-highlight')
require('file-finder')
require('git')

vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
    pattern = { "*" },
    callback = function()
        if vim.opt.buftype:get() == "terminal" then
            vim.cmd(":startinsert")
        end
    end
})
