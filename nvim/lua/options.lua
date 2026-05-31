local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true -- Great for jumping around code

-- Indentation (Strictly 4 spaces for Python)
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes" -- Prevents text from shifting when errors appear
opt.wrap = false

-- Leader Key (The most important key in Neovim)
vim.g.mapleader = " " -- Sets leader to the Spacebar
