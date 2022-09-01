local tBuiltIn = require'telescope.builtin'
vim.keymap.set('n', '<space>ff', tBuiltIn.find_files)
vim.keymap.set('n', '<space>fg', tBuiltIn.grep_string)
vim.keymap.set('n', '<space>fb', tBuiltIn.buffers)

