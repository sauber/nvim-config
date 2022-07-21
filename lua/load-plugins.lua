local Plug = vim.fn['plug#']
vim.call('plug#begin')
    -- Automatic installation of language servers
    Plug 'williamboman/nvim-lsp-installer'

    -- Language Server
    Plug 'neovim/nvim-lspconfig'

    -- Fuzzy finder
    Plug 'BurntSushi/ripgrep'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    -- Theme
    Plug 'folke/tokyonight.nvim'
    Plug 'airblade/vim-gitgutter'

    -- Statusline with icons
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'

    -- Autocomplete
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-cmdline' -- command line
    Plug 'hrsh7th/cmp-buffer' -- buffer completions
    Plug 'hrsh7th/cmp-nvim-lua' -- nvim config completions
    Plug 'hrsh7th/cmp-nvim-lsp' -- lsp completions
    Plug 'hrsh7th/cmp-path' -- file path completions
    Plug 'saadparwaiz1/cmp_luasnip' -- snippets completions
    Plug 'onsails/lspkind-nvim' -- icons in completion
    Plug 'L3MON4D3/LuaSnip' -- snippets
    Plug 'rafamadriz/friendly-snippets'

    -- Code formatter
    Plug 'sbdchd/neoformat'
vim.call('plug#end')
