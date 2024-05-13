local nmap = function(name, map)
  vim.keymap.set('n', name, map)
end

-- Navigate between windows when in normal mode
nmap('<C-J>', '<C-W><C-J>')
nmap('<C-H>', '<C-W><C-H>')
nmap('<C-K>', '<C-W><C-K>')
nmap('<C-L>', '<C-W><C-L>')
nmap('<leader>zi', ':e $MYVIMRC<CR>')

-- Navigate between windows when in terminal mode
nmap('<M-.>', '<C-W>5<')
nmap('<M-,>', '<C-W>5>')
nmap('<M-t>', '<C-W>+')
nmap('<M-s>', '<C-W>-')

vim.keymap.set('t', '<C-J>', '<C-\\><C-n><C-W><C-J>')
vim.keymap.set('t', '<C-H>', '<C-\\><C-n><C-W><C-H>')
vim.keymap.set('t', '<C-K>', '<C-\\><C-n><C-W><C-K>')
vim.keymap.set('t', '<C-L>', '<C-\\><C-n><C-W><C-L>')

-- vim.keymap.set('n', '<leader><CR>', ':so $MYVIMRC<CR>')
nmap('<leader><CR>', ':so %<CR>')
nmap('<leader>w', ':up<CR>')
nmap('<leader><space>', ':FZF<CR>')
nmap('<leader>b', ':Buffers<CR>')


local stackmap = require("stackmap")
stackmap.push("lua_test", "n", {
  ["<space>t"] = "<Plug>PlenaryTestFile"
})

-- stackmap.pop("lua_test")
