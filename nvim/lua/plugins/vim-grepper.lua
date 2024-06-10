return
{
  {
    'mhinz/vim-grepper',
    config = function()
      -- vim.g.grepper = {}
      -- vim.g.grepper.tools = { 'rg', 'grep', 'git' }
      vim.keymap.set('n', '<leader>G', ':Grepper --tool rg<cr>', opts)
      vim.keymap.set('n', '<leader>g', ':Grepper --tool git<cr>', opts)
    end
  }
}
