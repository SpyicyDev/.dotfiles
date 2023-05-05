require("lazy").setup({

    -- fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- native fzf for telescope
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

    -- devicons
    "nvim-tree/nvim-web-devicons",

    -- colorscheme
    { "catppuccin/nvim",                          name = "catppuccin" },

    -- treesitter
    { "nvim-treesitter/nvim-treesitter",          build = ":TSUpdate" },

    -- harpoon, BLAZINGLY FAST
    "theprimeagen/harpoon",

    -- undo visualizer
    "mbbill/undotree",

    -- git
    "tpope/vim-fugitive",

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                build = ":MasonUpdate",
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required

            {
                "jose-elias-alvarez/null-ls.nvim",
                dependencies = {
                    "nvim-lua/plenary.nvim",
                }
            },
            {
                "jay-babu/mason-null-ls.nvim",
                event = { "BufReadPre", "BufNewFile" },
            }
        }
    },

    -- tmux vim integration
    "christoomey/vim-tmux-navigator",

    -- auto pairs
    "jiangmiao/auto-pairs",

    -- statusline
    "nvim-lualine/lualine.nvim",

    -- make netrw look nicer
    "prichrd/netrw.nvim",

    -- markdown renderer
    { "toppair/peek.nvim", build = "deno task --quiet build:fast" },

    -- Github Copilot setup
    "zbirenbaum/copilot.lua",
    "zbirenbaum/copilot-cmp",

    -- icons for LSP
    "onsails/lspkind.nvim",

    -- Trouble!
    "folke/trouble.nvim",

    -- Arduino support
    "stevearc/vim-arduino",
}, {

})
