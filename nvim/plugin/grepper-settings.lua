vim.cmd [[
let g:grepper = {}
let g:grepper.tools = ['rg', 'grep', 'git']
" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
" Search for the current selection
" TODO: This will collide with gs => used for sorting by the vim-sort-motion plugin
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
nnoremap <Leader>g :Grepper -tool git<CR>
nnoremap <Leader>G :Grepper -tool rg<CR>

" Set up alias grep for GrepperGrep
function! SetupCommandAlias(input, output)
	exec 'cabbrev <expr> '.a:input
	\ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:input.'")'
	\ .'? ("'.a:output.'") : ("'.a:input.'"))'
endfunction

call SetupCommandAlias("grep", "GrepperGrep")
]]
