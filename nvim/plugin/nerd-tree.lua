vim.api.nvim_set_keymap('n','<C-n>', ":NERDTreeToggle<CR>", {noremap = false})
vim.api.nvim_set_keymap('n','<Leader>zf', ":NERDTreeFind<CR>", {noremap = false})

vim.cmd[[
let g:NERDTreeWinPos = "right"
]]
