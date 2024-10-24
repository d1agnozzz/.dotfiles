return {
    {
        'folke/which-key.nvim',
        event = 'BufReadPre',
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        config = function()
            local presets = require('which-key.plugins.presets')

            local wk = require('which-key')

            wk.setup({})
            -- wk.register({
            --     ['<leader>'] = {
            --         ['ca'] = { name = 'LSP code actions' },
            --         ['rn'] = { name = 'LSP rename symbol' },
            --         ['wq'] = { name = 'Write and quit buffer and open previous' },
            --         ['fmt'] = { name = 'Format code' },
            --         f = { name = 'Telescope' },
            --         b = {
            --             name = 'Buffer',
            --             n = 'Next buffer',
            --             p = 'Previous buffer',
            --         },
            --         t = { name = 'Trouble' },
            --         v = {
            --             name = 'Git',
            --             v = 'LazyGit',
            --             f = 'Fugitive',
            --         },
            --     },
            -- })
            wk.add({
                { '<leader>b', group = 'Buffer' },
                { '<leader>bn', desc = 'Next buffer' },
                { '<leader>bp', desc = 'Previous buffer' },
                { '<leader>ca', group = 'LSP code actions' },
                { '<leader>f', group = 'Telescope' },
                { '<leader>fmt', group = 'Format code' },
                { '<leader>rn', group = 'LSP rename symbol' },
                { '<leader>t', group = 'Trouble' },
                { '<leader>v', group = 'Git' },
                { '<leader>vf', desc = 'Fugitive' },
                { '<leader>vv', desc = 'LazyGit' },
                { '<leader>wq', group = 'Write and quit buffer and open previous' },
            })
        end,
    },
}
