vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-ghq.nvim' } },
    }
    use 'AlexvZyl/nordic.nvim'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update {
                with_sync = true,
            }
            ts_update()
        end,
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'hrsh7th/cmp-path',                 after = 'nvim-cmp' },
            { 'hrsh7th/cmp-buffer',               after = 'nvim-cmp' },
        },
    }
    use {
        'folke/which-key.nvim',
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require('which-key').setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end,
    }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
    }
    use {
        'akinsho/bufferline.nvim',
        tag = '*',
        requires = 'nvim-tree/nvim-web-devicons',
    }
    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end, -- ./nvim-colorizer.lua
    }
    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
    }
    use {
        'lukas-reineke/lsp-format.nvim',
    }

    use 'lukas-reineke/indent-blankline.nvim'
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    }
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup {}
        end,
    }
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end,
    }
    use 'nvim-tree/nvim-tree.lua'
    use 'm4xshen/smartcolumn.nvim'
    use {
        'ellisonleao/glow.nvim',
        config = function()
            require('glow').setup()
        end,
    }
    use {
        'vimwiki/vimwiki',
        config = function()
            vim.g.vimwiki_list = {
                {
                    path = '~/',
                    syntax = 'markdown',
                    ext = '.md',
                },
            }
        end,
    }

    use {
        'tversteeg/registers.nvim',
        config = function()
            require('registers').setup()
        end,
    }

    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install',
        setup = function()
            vim.g.mkdp_filetypes = { 'markdown' }
        end,
        ft = { 'markdown' },
    }

    use {
        'junegunn/fzf.vim',
        requires = { 'junegunn/fzf', run = ':call fzf#install()' }
    }
end)
