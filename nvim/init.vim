if &compatible
	  " `:set nocp` has many side effects. Therefore this should be done
	  "   " only when 'compatible' is set.
	set nocompatible
endif
filetype on

set packpath=~/_vim

function! PackInit() abort
	packadd minpac

	call minpac#init()
	call minpac#add('k-takata/minpac', {'type': 'opt'})

	" Additional plugins here.
	
	" call minpac#add ('godlygeek/tabular')
	" call minpac#add ('plasticboy/vim-markdown')
	" call minpac#add ('tpope/vim-obsession')
	" call minpac#add('leafgarland/typescript-vim')
	" call minpac#add('radenling/vim-dispatch-neovim')
	" call minpac#add('tpope/vim-dispatch')
	" call minpac#add('tpope/vim-projectionist') 
	call minpac#add ('scrooloose/nerdtree')
	call minpac#add ('jnurmine/Zenburn')
	call minpac#add('altercation/vim-colors-solarized')
	call minpac#add('christoomey/vim-sort-motion')
	call minpac#add('christoomey/vim-system-copy')
	call minpac#add('christoomey/vim-titlecase')
	call minpac#add('easymotion/vim-easymotion')
	call minpac#add('inkarkat/vim-ReplaceWithRegister')
	call minpac#add('inkarkat/vim-visualrepeat')
	call minpac#add('janko-m/vim-test')
	call minpac#add('junegunn/fzf.vim', {'type': 'opt'})
	call minpac#add('k-takata/minpac', {'type': 'opt'})
	call minpac#add('kana/vim-textobj-entire')
	call minpac#add('kana/vim-textobj-indent')
	call minpac#add('kana/vim-textobj-user')
	call minpac#add('mattn/emmet-vim')
	call minpac#add('mhinz/vim-grepper')
	call minpac#add('tpope/vim-commentary')
	call minpac#add('tpope/vim-fugitive') 
	call minpac#add('tpope/vim-repeat')
	call minpac#add('tpope/vim-surround')
	call minpac#add('tpope/vim-unimpaired')
	call minpac#add('w0rp/ale')
  
endfunction

packadd minpac

if !exists('*minpac#init')
  " minpac is not available.

  " Settings for plugin-less environment.
  "
else
  " minpac is available.
  command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
  command! PackClean  call PackInit() | call minpac#clean()
  command! PackStatus call PackInit() | call minpac#status()

endif


"Common settings
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader = ","
:map Q <Nop>
set gfn=DejaVu\ Sans\ Mono:h18

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '\.class$'] "ignore files in NERDTree
let NERDTreeShowHidden=1

set number
set relativenumber

" This is to toggle and show absolute number on insert mode
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set hidden
set shell=powershell.exe

" Configuration for the plugin 'janko-m/vim-test' to use the dispatch so we
" get the result of test failures in quick fix
let test#strategy = "dispatch"


" Traverse buffers quickly
noremap <silent> [b :bprevious<CR>
noremap <silent> ]b :bnext<CR>
noremap <silent> [B :bfirst<CR>
noremap <silent> ]B :blast<CR>


set background=dark

if has('gui_running')
	set background=dark
	let g:solarized_termcolors=256
	colorscheme solarized
  "colorscheme distinguished
else
	set background=dark
	colorscheme zenburn
endif


if !exists('*togglebg#map')
	call togglebg#map("<F5>")
endif


let g:ale_fixers = {
\	'javascript': ['prettier'],
\	'html': ['prettier'],
\	'typescript': ['prettier', 'eslint'],
\	'css': ['prettier'],
\}

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

autocmd FileType vim setlocal commentstring=" \ %s

nmap <Leader>r  <Plug>ReplaceWithRegisterOperator
nmap <Leader>rr <Plug>ReplaceWithRegisterLine
xmap <Leader>r  <Plug>ReplaceWithRegisterVisual

if has('unix')
	let g:system_copy#copy_command='xclip -sel clipboard'
	let g:system_copy#paste_command='xclip -sel clipboard -o'
else
	let g:system_copy#copy_command='clip'
	let g:system_copy#paste_command='paste'
	" let g:system_copy#paste_command='powershell.exe -command "Get-Clipboard"'
	
endif

