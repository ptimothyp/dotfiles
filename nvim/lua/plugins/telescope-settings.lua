return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    "ThePrimeagen/git-worktree.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        file_ignore_patterns = { "node_modules" },
				preview = {
					treesitter=false,
				}
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown(),
        },
      },
    })

    -- Load extensions
    telescope.load_extension("ui-select")
    telescope.load_extension("git_worktree")

    -- Keymaps
    local map = vim.keymap.set
    map("n", "<space>ff", builtin.find_files, { desc = "Find Files" })
    map("n", "<space>fg", builtin.live_grep, { desc = "Grep String" })
    map("n", "<space>fb", builtin.buffers, { desc = "Buffers" })
    map("n", "<space>fh", builtin.help_tags, { desc = "Help Tags" })
    map("n", "<space>fk", builtin.keymaps, { desc = "Keymaps" })

    -- Git Worktree
    map("n", "<leader>gws", ":Telescope git_worktree git_worktrees<CR>", { desc = "Switch Worktree" })
    map("n", "<leader>gwc", ":Telescope git_worktree create_git_worktree<CR>", { desc = "Create Worktree" })
  end,
}
