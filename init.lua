require('plugins')
require('code-completion')
require('file-explorer')
require('terminal')
require('statusbar')
require('mason-config')
require('gopls')
require('custom-keys')
require('custom-settings')
require('styling')
require('surround')
require('syntax-highlight')
require('file-finder')

vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
    pattern = { "*" },
    callback = function()
        if vim.opt.buftype:get() == "terminal" then
            vim.cmd(":startinsert")
        end
    end
})
