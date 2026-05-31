return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "williamboman/mason.nvim", config = true }, -- Bridges external installers with Neovim
      "williamboman/mason-lspconfig.nvim",           -- Automatically integrates mason with lspconfig
    },
    config = function()
      local lspconfig = require("lspconfig")
      local mason_lspconfig = require("mason-lspconfig")

      -- Ensure specific servers are installed
      mason_lspconfig.setup({
        ensure_installed = { "lua_ls", "pyright" }, -- Add servers you need here
      })

    end,
  },
}
