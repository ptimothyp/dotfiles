return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    branch = "0.1.x",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim'
    },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      require('telescope').setup {
        extensions = {
          ["ui-select"] = {
            entry_maker = require("telescope.themes").get_dropdown
          },
          defaults = {
            file_ignore_patterns = {
              "node_modules",
              ".git"
            }
          }
        }
      }
    end
  }
}
