local tBuiltIn = require 'telescope.builtin'
require('telescope').setup {
  extensions = {
    ["ui-select"] = {
      entry_maker = require("telescope.themes").get_dropdown
    },
    defaults = {
      file_ignore_patterns = {
        "node_modules"
      }
    }
  }
}
vim.keymap.set('n', '<space>ff', tBuiltIn.find_files, {})
vim.keymap.set('n', '<space>fg', tBuiltIn.grep_string, {})
vim.keymap.set('n', '<space>fb', tBuiltIn.buffers, {})
vim.keymap.set('n', '<space>fh', tBuiltIn.help_tags, {})
vim.keymap.set('n', '<space>fk', tBuiltIn.keymaps, {})

vim.keymap.set('n', '<leader>gws', ':Telescope git_worktree git_worktrees<CR>')
vim.keymap.set('n', '<leader>gwc', ':Telescope git_worktree create_git_worktree<CR>')


require("telescope").load_extension("ui-select")
