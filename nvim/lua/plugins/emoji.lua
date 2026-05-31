return {
  "allaman/emoji.nvim",
  dependencies = { "stevearc/dressing.nvim" }, -- Optional but recommended for UI
  config = function()
    require("emoji").setup({})
  end,
}
