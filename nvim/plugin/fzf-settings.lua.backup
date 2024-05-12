vim.keymap.set('n','<C-p>', ":FZF<CR>")
vim.keymap.set('n','<C-b>', ":Buffers<CR>")
vim.cmd[[
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}' --bind 'j:down,k:up,ctrl-j:preview-down,ctrl-k:preview-up'"
let $FZF_DEFAULT_COMMAND ='rg --files '

let g:fzf_buffers_jump = 1
]]
