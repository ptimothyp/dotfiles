local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()
  --packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'christoomey/vim-sort-motion'
  use 'christoomey/vim-system-copy'
  use 'christoomey/vim-titlecase'
  use 'easymotion/vim-easymotion'
  use 'editorconfig/editorconfig-vim'
  use 'gruvbox-community/gruvbox'
  use 'honza/vim-snippets'
  use 'inkarkat/vim-replacewithregister'
  use 'inkarkat/vim-visualrepeat'
  use 'ionide/Ionide-vim'
  use 'janko-m/vim-test'
  use 'jparise/vim-graphql'
  use 'jremmen/vim-ripgrep'
  use 'ryanoasis/vim-devicons'
  -- use 'preservim/nerdtree'
  use 'scrooloose/nerdtree'
  use({
    "junegunn/fzf",
    run = function() vim.fn["fzf#install()"]() end,
  })
  use 'junegunn/fzf.vim'
  use 'kana/vim-textobj-entire'
  use 'kana/vim-textobj-indent'
  use 'kana/vim-textobj-user'
  use 'kassio/neoterm'
  use 'kevinoid/vim-jsonc'
  -- use 'leafgarland/typescript-vim'
  use 'machakann/vim-highlightedyank'
  use 'mattn/emmet-vim'
  use 'mhinz/vim-grepper'
  use 'mhinz/vim-signify'
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    use 'neovim/nvim-lspconfig'
  }
  -- use 'neoclide/coc.nvim'
  -- use {'neoclide/coc.nvim', branch = 'release'}
  use 'neovimhaskell/haskell-vim'
  use 'omniSharp/omniSharp-vim'
  use 'pangloss/vim-javascript'
  use 'peitalin/vim-jsx-typescript'
  use 'pprovost/vim-ps1'
  use 'rust-lang/rust.vim'
  use 'shaunsingh/moonlight.nvim'
  use 'stefandtw/quickfix-reflector.vim'
  -- use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tpope/vim-unimpaired'
  -- use 'vim-syntastic/syntastic'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use "rafamadriz/friendly-snippets"
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'stevearc/overseer.nvim'
  use 'sbdchd/neoformat'
  use 'github/copilot.vim'

  -- use {
  --   'CopilotC-Nvim/CopilotChat.nvim', branch = 'canary',
  --   requires = { { 'nvim-lua/plenary.nvim' } }
  --
  -- }
  --
  -- use { "ibhagwan/fzf-lua",
  --   -- optional for icon support
  --   requires = { "nvim-tree/nvim-web-devicons" }
  -- }
  --
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }

  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
    'nvim-treesitter/nvim-treesitter-context',
  }

  use("mbbill/undotree")

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'justinmk/vim-sneak'
  -- use '/Users/timothy/sources/stackmap.nvim'
  use 'ptimothyp/stackmap.nvim'

  use {
    'ThePrimeagen/harpoon',
    branch="harpoon2",
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'vimwiki/vimwiki'

  use 'mfussenegger/nvim-dap'

  -- use({
  --   "epwalsh/obsidian.nvim",
  --   tag = "*", -- recommended, use latest release instead of latest commit
  --   requires = {
  --     -- Required.
  --     "nvim-lua/plenary.nvim",
  --
  --     -- see below for full list of optional dependencies 👇
  --   },
  -- })
  use({
    'Exafunction/codeium.vim',
    config = function()
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  })


  use {
    "ThePrimeagen/git-worktree.nvim",
    config = function()
      require("git-worktree").setup({})
      require("telescope").load_extension("git_worktree")
    end
  }

  use {
    "folke/twilight.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  }
  use {
    "folke/zen-mode.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  }


  if packer_bootstrap then
    require('packer').sync()
  end
end)
