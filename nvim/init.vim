" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc
"
packadd minpac
call minpac#init()
call minpac#add('tpope/vim-surround')
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('junegunn/fzf.vim', {'type': 'opt'})
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('w0rp/ale')
call minpac#add('mhinz/vim-grepper')
call minpac#add('tpope/vim-fugitive')
call minpac#add('janko-m/vim-test')

let mapleader = ","

" Shorthand for updating packages using the minpac plugin to manage the
" packages
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

nnoremap <C-p> :<C-u>FZF<CR>
let g:fzf_buffers_jump = 1

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Mappings for navigating ale warnings
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" Setting for the grepper plugin
let g:grepper = {}
let g:grepper.tools = ['rg', 'grep', 'git']
" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Set up alias grep for GrepperGrep
function! SetupCommandAlias(input, output)
	exec 'cabbrev <expr> '.a:input
	\ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:input.'")'
	\ .'? ("'.a:output.'") : ("'.a:input.'"))'
endfunction
call SetupCommandAlias("grep", "GrepperGrep")

nnoremap <Leader>g :Grepper -tool git<CR>
nnoremap <Leader>G :Grepper -tool rg<CR>

set relativenumber

" Configuration for the plugin 'janko-m/vim-test' to use the dispatch so we
" get the result of test failures in quick fix
let test#strategy = "dispatch"
