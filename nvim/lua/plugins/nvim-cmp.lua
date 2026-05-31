return {
  "nvim-cmp",
  dependencies = {
    {
      {
        "garymjr/nvim-snippets",
        opts = {
          friendly_snippets = true,
        }
      },
      "rafamadriz/friendly-snippets",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip"
    },
  },
  opts = function(_, opts)
    opts.snippet = {
      expand = function(item)
        return LazyVim.cmp.expand(item.body)
      end,
    }
  end,
  keys = {
    {
      "<Tab>",
      function()
        return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<Tab>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
    {
      "<S-Tab>",
      function()
        return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<Tab>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
  },
  -- setup = function()
  -- snippet = {
  --     expand = function(args)
  --       -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
  --       require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
  --       -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
  --       -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
  --       -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
  --     end,
  --   },
  --   window = {
  --     -- completion = cmp.config.window.bordered(),
  --     -- documentation = cmp.config.window.bordered(),
  --   },
  --   mapping = cmp.mapping.preset.insert({
  --     ['<C-b>'] = cmp.mapping.scroll_docs(-4),
  --     ['<C-f>'] = cmp.mapping.scroll_docs(4),
  --     ['<C-Space>'] = cmp.mapping.complete(),
  --     ['<C-e>'] = cmp.mapping.abort(),
  --     ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  --   }),
  --   sources = cmp.config.sources({
  --     -- { name = 'nvim_lsp' },
  --     -- { name = 'vsnip' }, -- For vsnip users.
  --     { name = 'luasnip' }, -- For luasnip users.
  --     -- { name = 'ultisnips' }, -- For ultisnips users.
  --     -- { name = 'snippy' }, -- For snippy users.
  --   }, {
  --     { name = 'buffer' },
  --   })
  -- end,
}
