if &compatible
	" `:set nocp` has many side effects. Therefore this should be done
	"   " only when 'compatible' is set.
	set nocompatible
endif

filetype on

function! PackInit() abort
	packadd minpac
	call minpac#init()
	call minpac#add('mhinz/vim-signify')
	call minpac#add('christoomey/vim-sort-motion')
	call minpac#add('christoomey/vim-system-copy')
	call minpac#add('christoomey/vim-titlecase')
	call minpac#add('easymotion/vim-easymotion')
	call minpac#add('editorconfig/editorconfig-vim')
	call minpac#add('gruvbox-community/gruvbox')
	call minpac#add('honza/vim-snippets')
	call minpac#add('iamcco/markdown-preview.nvim', {'do': 'packloadall! | call mkdp#util#install()'})
	call minpac#add('inkarkat/vim-replacewithregister')
	call minpac#add('inkarkat/vim-visualrepeat')
	call minpac#add('ionide/Ionide-vim')
	call minpac#add('janko-m/vim-test')
	call minpac#add('jparise/vim-graphql')
	call minpac#add('jremmen/vim-ripgrep')
	call minpac#add('junegunn/fzf',  { 'do': { -> fzf#install() } })
	call minpac#add('junegunn/fzf.vim')
	call minpac#add('k-takata/minpac', {'type': 'opt'})
	call minpac#add('kana/vim-textobj-entire')
	call minpac#add('kana/vim-textobj-indent')
	call minpac#add('kana/vim-textobj-user')
	call minpac#add('kassio/neoterm')
	call minpac#add('kevinoid/vim-jsonc')
	call minpac#add('leafgarland/typescript-vim')
	call minpac#add('machakann/vim-highlightedyank')
	call minpac#add('mattn/emmet-vim')
	call minpac#add('mhinz/vim-grepper')
	call minpac#add('mhinz/vim-signify')
	call minpac#add('neoclide/coc.nvim')
	call minpac#add('neovimhaskell/haskell-vim')
	call minpac#add('omniSharp/omniSharp-vim')
	call minpac#add('pangloss/vim-javascript')
	call minpac#add('peitalin/vim-jsx-typescript')
	call minpac#add('pprovost/vim-ps1')
	call minpac#add('rust-lang/rust.vim')
	call minpac#add('ryanoasis/vim-devicons')
	call minpac#add('scrooloose/nerdtree')
	call minpac#add('shaunsingh/moonlight.nvim')
	call minpac#add('stefandtw/quickfix-reflector.vim')
	call minpac#add('tpope/vim-commentary')
	call minpac#add('tpope/vim-fugitive')
	call minpac#add('tpope/vim-repeat')
	call minpac#add('tpope/vim-surround')
	call minpac#add('tpope/vim-unimpaired')
	call minpac#add('vim-syntastic/syntastic')
endfunction

command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()

let mapleader=" "

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set gfn=Fira\ Code\ Medium:h18
" numbering
set number relativenumber numberwidth=3
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

noremap gr gd[{V%::s/<C-R>///gc<left><left><left>

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$', '\.class$'] "ignore files in NERDTree
let g:NERDTreeWinPos = "right"

let g:fzf_preview_window = 'right:60%'

set tabstop=2 shiftwidth=2 expandtab

set gfn=Fira\ Code\ Medium:h18

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

let g:coc_global_extensions = [
  \ 'coc-ultisnips',
			\ 'coc-snippets',
			\ 'coc-powershell',
			\ 'coc-marketplace',
			\ 'coc-xml',
			\ 'coc-tsserver',
			\ 'coc-styled-components',
			\ 'coc-react-refactor',
			\ 'coc-pairs',
			\ 'coc-json',
      \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if exists('*togglebg#map')
	call togglebg#map("<F5>")
endif
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" function! ShowDocIfNoDiagnostic(timer_id)
"			if (coc#util#has_float() == 0)
"						silent call CocActionAsync('doHover')
"			endif
" endfunction

" function! s:show_hover_doc()
"		call timer_start(500, 'ShowDocIfNoDiagnostic')
" endfunction

" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

if has("nvim")
	" tnoremap <Esc> <C-\><C-n>
	tnoremap <C-J> <C-\><C-n><C-W><C-J>
	tnoremap <C-K> <C-\><C-n><C-W><C-K>
	tnoremap <C-L> <C-\><C-n><C-W><C-L>
	tnoremap <C-H> <C-\><C-n><C-W><C-H>
endif

nnoremap <C-p> :Files<Cr>
set inccommand=split
set cursorline
set ignorecase

" Save if not saved
nmap <leader>w :up<CR>

nmap <leader>zi :e $MYVIMRC<CR>
nmap <leader><CR> :so $MYVIMRC<CR>
nmap <leader>zf :NERDTreeFind<CR>

set background=dark

" Git fugitive mappings
nmap <leader>gs :Git<CR>

" Set colorscheme
colorscheme gruvbox

" FZF settings
let FZF_DEFAULT_COMMAND="rg --files"
let FZF_DEFAULT_OPTS="-m --height 50% --border --inline-info"
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

nmap <leader>b :Buffers<CR>
nmap <leader>f :Files<CR>
nmap <leader>h :History<CR>
nmap <leader>M :Maps<CR>
nmap <leader>c :Commands<CR>
nmap <leader>h :History<CR>

" Enable mouse
set mouse=a

" Default split below and right
set splitbelow splitright

" Rust setting
let g:rustfmt_autosave = 1

augroup journal
  autocmd VimEnter */journal/** 0r ~/vim/templates/journal.skeleton
augroup end

" Map shortcut for Escape
imap jk <Esc>

let g:OmniSharp_popup=0
let g:rufo_auto_formatting = 1
echom "    ◙‿◙ ♥◡♥ (⌐■_■)    "
