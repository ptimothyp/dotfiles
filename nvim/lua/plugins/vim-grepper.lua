return
{
  {
    'mhinz/vim-grepper',
    config = function()
      vim.cmd([[
let g:grepper = {}
let g:grepper.tools = ['rg', 'grep', 'git']
          ]])
      local opts = { noremap = true, silent = true }
      vim.keymap.set('n', '<leader>G', ':Grepper -tool rg<cr>', opts)
      vim.keymap.set('n', '<leader>g', ':Grepper -tool git<cr>', opts)
    end
  }
}
