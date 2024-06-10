return {
  "ThePrimeagen/git-worktree.nvim",
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require("git-worktree").setup({})
    require("telescope").load_extension("git_worktree")
    vim.keymap.set('n', '<leader>gws', ':Telescope git_worktree git_worktrees<CR>')
    vim.keymap.set('n', '<leader>gwc', ':Telescope git_worktree create_git_worktree<CR>')
  end
}
