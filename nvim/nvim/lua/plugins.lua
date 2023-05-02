require("lazy").setup({

    -- fuzzy finder
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- native fzf for telescope
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

    -- devicons
    "nvim-tree/nvim-web-devicons",

    -- colorscheme
    { "catppuccin/nvim", name = "catppuccin" },

    -- treesitter
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

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
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    },
    "christoomey/vim-tmux-navigator",
    "github/copilot.vim",
    "jiangmiao/auto-pairs",
    "nvim-lualine/lualine.nvim",
    "prichrd/netrw.nvim",
}, {

})
