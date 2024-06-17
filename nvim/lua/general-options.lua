vim.g.mapleader = " "
vim.keymap.set('i', 'jk', '<ESC>')

local opt = vim.opt

-- number settings
opt.number = true
opt.relativenumber = true
opt.numberwidth = 3
vim.cmd [[
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
]]

opt.mouse = 'a'
opt.background = "dark"
opt.colorcolumn = "80"
opt.cursorcolumn = true
opt.gfn = "Fira Code:14"
-- opt.gfn = "FiraCode Nerd Font:h14"
opt.cursorline = true
opt.directory = "$HOME/vimfiles/swp/"
opt.hidden = true
opt.ignorecase = true
-- show in split window when replacing
opt.inccommand = "split"
opt.updatetime = 100

-- show list chars
vim.opt.list = true
vim.opt.listchars = { eol = '¶', tab = '>-', trail = '~', extends = '>', precedes = '<' }

opt.backup = false
opt.swapfile = false
opt.scrolloff = 3
opt.shiftround = true
opt.shiftwidth = 2
opt.showmatch = true
opt.showtabline = 1
opt.sidescrolloff = 5
opt.smartcase = true -- case instance search
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.undofile = true
opt.undodir = vim.fn.expand('~/vimfiles/undodir')
opt.wildmenu = true
vim.cmd [[
		augroup vimrc-incsearch-highlight
		  autocmd!
		  autocmd CmdlineEnter /,\? :set hlsearch
		  autocmd CmdlineLeave /,\? :set nohlsearch
		augroup END
]]


local augroup = vim.api.nvim_create_augroup

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 450,
    })
  end,
})


opt.incsearch = true
-- opt.hlsearch = true
opt.tabstop = 2
opt.softtabstop = 2

vim.cmd [[
filetype plugin on
]]
