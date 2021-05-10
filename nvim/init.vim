if &compatible
	" `:set nocp` has many side effects. Therefore this should be done
	"   " only when 'compatible' is set.
	set nocompatible
endif

filetype on


function! PackInit() abort
	packadd minpac

	call minpac#init()
	call minpac#add('k-takata/minpac', {'type': 'opt'})

	" Additional plugins here.
	
	" call minpac#add ('godlygeek/tabular')
	" call minpac#add ('plasticboy/vim-markdown')
	" call minpac#add ('tpope/vim-obsession')
	call minpac#add('leafgarland/typescript-vim')
	call minpac#add('pangloss/vim-javascript')
	call minpac#add('peitalin/vim-jsx-typescript')
	call minpac#add('jparise/vim-graphql')
	" call minpac#add('radenling/vim-dispatch-neovim')
	" call minpac#add('tpope/vim-dispatch')
	" call minpac#add('tpope/vim-projectionist') 
	call minpac#add ('scrooloose/nerdtree')
	call minpac#add ('jnurmine/zenburn')
gruvbox-community/gruvbox
	call minpac#add('altercation/vim-colors-solarized')
	call minpac#add('christoomey/vim-sort-motion')
	call minpac#add('christoomey/vim-system-copy')
	call minpac#add('christoomey/vim-titlecase')
	call minpac#add('easymotion/vim-easymotion')
	call minpac#add('inkarkat/vim-ReplaceWithRegister')
	call minpac#add('inkarkat/vim-visualrepeat')
	call minpac#add('janko-m/vim-test')
	call minpac#add('junegunn/fzf')
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
	" Rust package
	call minpac#add('rust-lang/rust.vim')
	call minpac#add('vim-syntastic/syntastic')
	call minpac#add('ycm-core/YouCompleteMe')
	call minpac#add('Raimondi/delimitMate')
  
endfunction

command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()

nnoremap <Leader>g :Grepper -tool git<CR>
nnoremap <Leader>G :Grepper -tool rg<CR>

"Common settings
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader = ","

nnoremap <C-p> :<C-u>FZF<CR>
let g:fzf_buffers_jump = 1
" let FZF_DEFAULT_COMMAND='powershell.exe -NoLogo -NoProfile -Noninteractive -Command "Get-ChildItem -File -Recurse -Name"'
" let FZF_DEFAULT_COMMAND='powershell.exe -NoLogo -NoProfile -Noninteractive -Command "Get-ChildItem -File -Recurse -Name"'

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Mappings for navigating ale warnings
nmap <silent> [W <call minpac#add(>(ale_first)
nmap <silent> [w <call minpac#add(>(ale_previous)
nmap <silent> ]w <call minpac#add(>(ale_next)
nmap <silent> ]W <call minpac#add(>(ale_last)

" Setting for the grepper plugin
let g:grepper = {}
let g:grepper.tools = ['rg', 'grep', 'git']
" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
" Search for the current selection
" TODO: This will collide with gs => used for sorting by the vim-sort-motion plugin
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Set up alias grep for GrepperGrep
function! SetupCommandAlias(input, output)
	exec 'cabbrev <expr> '.a:input
	\ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:input.'")'
	\ .'? ("'.a:output.'") : ("'.a:input.'"))'
endfunction
call SetupCommandAlias("grep", "GrepperGrep")
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

" Configuration for the plugin 'janko-m/vim-test' to use the dispatch so we
" get the result of test failures in quick fix
" let test#strategy = "dispatch"


" Traverse buffers quickly
noremap <silent> [b :bprevious<CR>
noremap <silent> ]b :bnext<CR>
noremap <silent> [B :bfirst<CR>
noremap <silent> ]B :blast<CR>

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

set background=dark

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	set background=light
	" let g:solarized_termcolors=256
	colorscheme zenburn
endif


if exists('*togglebg#map')
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

nmap <Leader>r  <call minpac#add(>ReplaceWithRegisterOperator
nmap <Leader>rr <call minpac#add(>ReplaceWithRegisterLine
xmap <Leader>r  <call minpac#add(>ReplaceWithRegisterVisual

if has('unix')
	let g:system_copy#copy_command='xclip -sel clipboard'
	let g:system_copy#paste_command='xclip -sel clipboard -o'
else
	set packpath=~/_vim
	let g:system_copy#copy_command='clip'
	let g:system_copy#paste_command='powershell.exe -NoLogo -NoProfile -Noninteractive -Command "Get-Clipboard"'
	" let g:system_copy#paste_command='powershell.exe -command "Get-Clipboard"'
	
endif

set tabstop=2
set shiftwidth=2

" Rust settings
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'xclip -selection clipboard'

let delimitMate_expand_cr = 1


let g:NERDTreeWinPos = "right"
