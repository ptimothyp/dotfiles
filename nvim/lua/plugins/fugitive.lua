return {
  'tpope/vim-fugitive',
  config = function ()
    vim.keymap.set('n', '<leader>gs', ':Git<CR>')
    vim.keymap.set('n', '<leader>gps', ':Git push<CR>')
    vim.keymap.set('n', '<leader>gpl', ':Git pull<CR>')
    vim.keymap.set('n', '<leader>gpf', ':Git fetch<CR>')
    vim.keymap.set('n', '<leader>gbl', ':Git blame<CR>')
    -- vim.keymap.set('n', '<leader>gpr', ':Git rebase<CR>')
    -- vim.keymap.set('n', 'gdu', '<cmd>diffget //2<CR>')
    -- vim.keymap.set('n', 'gdi', '<cmd>diffget //3<CR>')
  end,

}
