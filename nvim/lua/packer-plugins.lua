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
  use 'leafgarland/typescript-vim'
  use 'machakann/vim-highlightedyank'
  use 'mattn/emmet-vim'
  use 'mhinz/vim-grepper'
  use 'mhinz/vim-signify'
  use 'neovim/nvim-lspconfig'
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

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }

  }

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use 'nvim-treesitter/nvim-treesitter'

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
end)
