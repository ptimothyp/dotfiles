return {
  "preservim/nerdtree",
  init = function()
    -- Set window position to the right
    vim.g.NERDTreeWinPos = "right"
  end,
  keys = {
    { "<C-n>", ":NERDTreeToggle<CR>", desc = "Toggle NERDTree" },
    { "<leader>zf", ":NERDTreeFind<CR>", desc = "NERDTree Find File" },
  },
}
