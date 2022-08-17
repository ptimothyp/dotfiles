vim.g.mapleader = " "
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true})
vim.o.relativenumber = true
vim.o.mouse = 'a'
vim.o.background = "dark"
vim.o.colorcolumn = "80"
vim.o.cursorcolumn = true
vim.o.gfn = "Fira Code:h18"
vim.o.cursorline = true
vim.o.directory="~/vimfiles/swp//"
vim.o.hidden = true
vim.o.ignorecase = true
-- show in split window when replacing
vim.o.inccommand = "split"

-- show list chars
vim.opt.list = true
vim.opt.listchars = {eol = '¶', tab='>-',trail = '~',extends = '>',precedes = '<'}

vim.o.backup = false
vim.o.swapfile = false
vim.o.scrolloff = 3
