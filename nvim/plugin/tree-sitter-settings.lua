vim.cmd [[
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
]]
require 'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "haskell", "typescript", "zig" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  indent = {
    enable = true,
  },
  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
}

-- local parser_config = require 'nvim-treesitter.parsers'.get_parser_configs()
-- parser_config.powershell = {
--   install_info = {
--     url = "~/sources/tree-sitter-PowerShell",
--     files = { "src/parser.c" },
--     branch = "operator001",
--     generate_requires_npm = false,
--     requires_generate_from_grammar = false,
--   },
--   filetype = "ps1",
-- }
