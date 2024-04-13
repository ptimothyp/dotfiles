local harpoon = require('harpoon')
-- require("telescope").load_extension('harpoon')
-- require("harpoon").setup({ ... })
-- local silent = { silent = true }
--
-- -- Terminal commands
-- -- ueoa is first through fourth finger left hand home row.
-- -- This just means I can crush, with opposite hand, the 4 terminal positions
-- --

harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers").new({}, {
    prompt_title = "Harpoon",
    finder = require("telescope.finders").new_table({
      results = file_paths,
    }),
    previewer = conf.file_previewer({}),
    sorter = conf.generic_sorter({}),
  }):find()
end

vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
  { desc = "Open harpoon window" })
-- -- These functions are stored in harpoon.  A plugn that I am developing
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
-- -- vim.keymap.set('n', "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)
--
vim.keymap.set('n', "<leader>f1", function() harpoon:list():select(1) end)
vim.keymap.set('n', "<leader>f2", function() harpoon:list():select(2) end)
vim.keymap.set('n', "<leader>f3", function() harpoon:list():select(3) end)
vim.keymap.set('n', "<leader>f4", function() harpoon:list():select(4) end)
