return {
  "scrooloose/nerdtree",
  lazy = false,
  dependencies = {
    { 'ryanoasis/vim-devicons' },
    { 'Xuyuanp/nerdtree-git-plugin' }
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ":NERDTreeToggle<CR>")
    vim.keymap.set('n', '<Leader>zf', ":NERDTreeFind<CR>")

    vim.cmd [[
let g:NERDTreeWinPos = "right"
]]
  end,
}
