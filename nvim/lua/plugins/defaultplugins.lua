return {
    -- ==========================================
    -- Core & UI
    -- ==========================================
    { "shaunsingh/moonlight.nvim" },
    { 
        "folke/twilight.nvim", 
        opts = {} 
    },
    { 
        "folke/zen-mode.nvim", 
        opts = {} 
    },

    -- ==========================================
    -- File Navigation & Search (Telescope, Oil, Harpoon)
    -- ==========================================
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "nvim-telescope/telescope-ui-select.nvim" },
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup({
                columns = { "icon" },
                keymaps = {
                    ["<C-h>"] = false,
                    ["<M-h>"] = "actions.select_split",
                },
                view_options = { show_hidden = true },
            })
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
            vim.keymap.set("n", "<space>-", require("oil").toggle_float)
        end,
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "mbbill/undotree" },

    -- ==========================================
    -- Treesitter
    -- ==========================================
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    { "nvim-treesitter/nvim-treesitter-context" },

    -- ==========================================
    -- LSP, Mason, & Completion (The IDE Brain)
    -- ==========================================
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        }
    },
    { "mfussenegger/nvim-dap" }, -- Debugger
    { "stevearc/overseer.nvim" },
    
    -- Completion Engine
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
        }
    },

    -- Snippets
    { "honza/vim-snippets" },
    {
        "L3MON4D3/LuaSnip",
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" },
    },

    -- AI / Copilot
    { "github/copilot.vim" },

    -- ==========================================
    -- Git Tools
    -- ==========================================
    { "mhinz/vim-signify" }, -- Note: Consider replacing with lewis6991/gitsigns.nvim for modern setups
    {
        "ThePrimeagen/git-worktree.nvim",
        config = function()
            require("git-worktree").setup({})
            require("telescope").load_extension("git_worktree")
        end
    },

    -- ==========================================
    -- TPope & Kana Essentials (Vim Motions/Text Objects)
    -- ==========================================
    { "tpope/vim-repeat" },
    { "tpope/vim-surround" },
    { "tpope/vim-unimpaired" },

    -- ==========================================
    -- Code Manipulation & Utilities
    -- ==========================================
    { "christoomey/vim-sort-motion" },
    { "christoomey/vim-system-copy" },
    { "christoomey/vim-titlecase" },
    { "easymotion/vim-easymotion" }, -- Note: folke/flash.nvim is the modern standard if you ever want to upgrade
    { "justinmk/vim-sneak" },
    {
        "numToStr/Comment.nvim",
        config = function() require('Comment').setup() end
    },
    { "inkarkat/vim-replacewithregister" },
    { "inkarkat/vim-visualrepeat" },
    { "ptimothyp/stackmap.nvim" },
    { "mhinz/vim-grepper" },
    { "jremmen/vim-ripgrep" },
    { "stefandtw/quickfix-reflector.vim" },
    { "kassio/neoterm" },
    { "mtikekar/nvim-send-to-term" },
    { "janko-m/vim-test" }, -- Note: For future reference, this repo moved to vim-test/vim-test
    { "vimwiki/vimwiki" },
    {
        "iamcco/markdown-preview.nvim",
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    -- ==========================================
    -- Language Specific (Syntax files)
    -- ==========================================
    -- Note: Treesitter makes many of these redundant now, but keeping them if you rely on their specific macros/indent logic.
    { "ionide/Ionide-vim" },
    { "jparise/vim-graphql" },
    { "mattn/emmet-vim" },
    { "kevinoid/vim-jsonc" },
    { "neovimhaskell/haskell-vim" },
    { "omniSharp/omniSharp-vim" },
    { "pangloss/vim-javascript" },
    { "peitalin/vim-jsx-typescript" },
    { "pprovost/vim-ps1" },
    { "rust-lang/rust.vim" },
}
