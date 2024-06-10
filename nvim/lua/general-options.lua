vim.g.mapleader = " "
vim.keymap.set('i', 'jk', '<ESC>')

-- number settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.numberwidth = 3
vim.cmd [[
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
]]

vim.o.mouse = 'a'
vim.o.background = "dark"
vim.o.colorcolumn = "80"
vim.o.cursorcolumn = true
vim.o.gfn = "Fira Code:14"
-- vim.o.gfn = "FiraCode Nerd Font:h14"
vim.o.cursorline = true
vim.o.directory = "$HOME/vimfiles/swp/"
vim.o.hidden = true
vim.o.ignorecase = true
-- show in split window when replacing
vim.o.inccommand = "split"
vim.o.updatetime = 100

-- show list chars
vim.opt.list = true
vim.opt.listchars = { eol = '¶', tab = '>-', trail = '~', extends = '>', precedes = '<' }

vim.o.backup = false
vim.o.swapfile = false
vim.o.scrolloff = 3
vim.o.shiftround = true
vim.o.shiftwidth = 2
vim.o.showmatch = true
vim.o.showtabline = 1
vim.o.sidescrolloff = 5
vim.o.smartcase = true -- case instance search
vim.o.smartindent = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.undofile = true
vim.o.undodir = vim.fn.expand('~/vimfiles/undodir')
vim.o.wildmenu = true
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
      timeout = 400,
    })
  end,
})


vim.o.incsearch = true
-- vim.o.hlsearch = true
vim.o.tabstop = 2
vim.o.softtabstop = 2

vim.cmd [[
filetype plugin on
]]
