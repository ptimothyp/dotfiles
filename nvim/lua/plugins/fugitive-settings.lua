return {
  "tpope/vim-fugitive",
  keys = {
    { "<leader>gs", ":Git<CR>", desc = "Git Status" },
    { "<leader>gps", ":Git push<CR>", desc = "Git Push" },
    { "<leader>gpl", ":Git pull<CR>", desc = "Git Pull" },
    { "<leader>gpf", ":Git fetch<CR>", desc = "Git Fetch" },
    { "<leader>gbl", ":Git blame<CR>", desc = "Git Blame" },
    -- Conflict Resolution
    { "gdu", "<cmd>diffget //2<CR>", desc = "Diffget Local (Left)" },
    { "gdi", "<cmd>diffget //3<CR>", desc = "Diffget Remote (Right)" },
  },
}
