return{
    'nvim-tree/nvim-web-devicons',
    { 'nvim-telescope/telescope.nvim', dependencies = 'nvim-lua/plenary.nvim' },
    { 'nvim-lualine/lualine.nvim', opts = {
          options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = { left = '|', right = '|'},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {
              statusline = {},
              winbar = {},
            },
            ignore_focus = {'NvimTree',},
            always_divide_middle = true,
            globalstatus = true,
            refresh = {
              statusline = 1000,
              tabline = 1000,
              winbar = 1000,
            }
          },
          sections = {
            lualine_a = {'mode', 'buffers'},
            lualine_b = {'branch', 'diff', 'diagnostics'},
            lualine_c = {},
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
          },
          inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
          },
          tabline = {},
          winbar = {},
          inactive_winbar = {},
          extensions = {'lazy', 'nvim-tree'}
    }, },
    { 'nvim-tree/nvim-tree.lua',
        opts = {
            diagnostics = { enable = true, show_on_dirs = true},
            modified = { enable = true },
        },
        init = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
        end
    },
    {
        'iamcco/markdown-preview.nvim',
        cmd = { 'MarkdownPreviewToggle' },
        ft = { 'markdown' },
        build = function() vim.fn["mkdp#util#install"]() end,
    }, }