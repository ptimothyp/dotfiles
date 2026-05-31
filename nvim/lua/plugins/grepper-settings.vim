return {
  "mhinz/vim-grepper",
  init = function()
    -- g:grepper settings must be set in 'init' so they are available on startup
    vim.g.grepper = {
      tools = { "rg", "grep", "git" },
    }
  end,
  config = function()
    -- 1. Keymaps (Normal and Visual modes)
    local map = vim.keymap.set
    
    -- Search for the current word
    map("n", "<leader>*", ":Grepper -cword -noprompt<CR>", { desc = "Grep current word" })
    
    -- GrepperOperator (Operator-pending and Visual mode for selections)
    -- Using 'gs' as requested (note: this will override vim-sort-motion if installed)
    map({ "n", "x" }, "gs", "<plug>(GrepperOperator)", { desc = "Grepper Operator" })
    
    -- Tool-specific shortcuts
    map("n", "<leader>g", ":Grepper -tool git<CR>", { desc = "Grep using Git" })
    map("n", "<leader>G", ":Grepper -tool rg<CR>", { desc = "Grep using Ripgrep" })

    -- 2. Command Alias: Replace ':grep' with ':GrepperGrep'
    -- This Lua snippet replicates your SetupCommandAlias logic
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        vim.cmd([[cnoreabbrev <expr> grep (getcmdtype() ==# ':' && getcmdline() ==# 'grep') ? 'GrepperGrep' : 'grep']])
      end,
    })
  end,
}

