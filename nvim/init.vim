if &compatible
" `:set nocp` has many side effects. Therefore this should be done
"   " only when 'compatible' is set.
	set nocompatible
endif

set path+=**
syntax on " Enable syntax highlighting
filetype indent on " Enable indenting for files

	" Additional plugins here.

	" call minpac#add ('godlygeek/tabular')
	" call minpac#add ('plasticboy/vim-markdown')
	" call minpac#add ('tpope/vim-obsession')
	" call minpac#add('radenling/vim-dispatch-neovim')
	" call minpac#add('tpope/vim-dispatch')
	" call minpac#add('raimondi/delimitmate')
	" call minpac#add('preservim/nerdtree')
	" call minpac#add('styled-components/vim-styled-components', { 'branch': 'main' })
packadd minpac

function! PackInit() abort
	call minpac#init()
	packadd minpac
	call minpac#add('christoomey/vim-sort-motion')
	call minpac#add('christoomey/vim-system-copy')
	call minpac#add('christoomey/vim-titlecase')
	call minpac#add('easymotion/vim-easymotion')
	call minpac#add('editorconfig/editorconfig-vim')
	call minpac#add('gruvbox-community/gruvbox')
	call minpac#add('honza/vim-snippets')
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
command! PackClean call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()

let mapleader = " "
set rtp+=C:\Users\Timothy\scoop\apps\fzf

nnoremap <leader>zi :e $MYVIMRC<CR>
nnoremap <leader><CR> :so $MYVIMRC<CR>
nnoremap <leader>w :up<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>b :Buffers<CR>

" Shortcuts for split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Need to figure out how to map alt key
" nnoremap silent <A-left> :vertical resize -5<cr>
" nnoremap silent <A-down> :resize +5<cr>
" nnoremap silent <A-up> :resize -5<cr>
" nnoremap silent <A-right> :vertical resize +5<cr>

" let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" let $FZF_DEFAULT_COMMAND ='rg --files --no-ignore-vcs --hidden'
" let $FZF_DEFAULT_OPTS='--height 20% --layout=reverse --border --inline-info'
" let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}' --bind 'j:down,k:up,ctrl-j:preview-down,ctrl-k:preview-up'"
let $FZF_DEFAULT_COMMAND ='rg --files '
silent nmap <C-p> :FZF<CR>
silent nmap <C-b> :Buffers<CR>
let g:fzf_buffers_jump = 1

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set guifont=Fira\ Code:h18
colorscheme gruvbox " Set nice looking colorscheme

set background=dark
set colorcolumn=80 " Set column 80 color
set cursorcolumn
set cursorline
set directory=$HOME/vimfiles/swp// " Set the swap director
set hidden
set ignorecase
set inccommand=split
set laststatus=2 "show status line
set listchars=eol:¶,tab:>-,trail:~,extends:>,precedes:<
set list
set mouse=a
set nobackup " Disable backup files
set noswapfile " Don't create temporary swap files
set nowritebackup
set number " Enable line numbers
set scrolloff=3
set shiftround
set shiftwidth=2 " Indent by 4 spaces when auto-indenting
set showmatch " higlight matching [{()}]
set showtabline=1
set sidescrolloff=5
set smartcase " Case insensitive search till you put in a capital character
set smartindent
set softtabstop=2 " Indent by 2 spaces when hitting tab
set splitbelow splitright
set tabstop=2 " Show existing tab with 2 spaces width
set undodir=~/vimfiles/undodir " The undo directory this needs to be present
set undofile " Create separate undo file
set wildmenu " Display command line's tab complete options as a menu.
set incsearch " search as characters are entered.
set hlsearch " highlight matches

" Nerdtree customization
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let NERDTreeIgnore=['\.pyc$', '\~$', '\.class$', 'node_modules', ".git"] "ignore files in NERDTree
let NERDTreeShowHidden=1
nnoremap <leader>zf :NERDTreeFind<CR>

" Coc settings
let g:coc_global_extensions=[
			\ 'coc-ultisnips',
			\ 'coc-snippets',
			\ 'coc-powershell',
			\ 'coc-marketplace',
			\ 'coc-xml',
			\ 'coc-tsserver',
			\ 'coc-styled-components',
			\ 'coc-react-refactor',
			\ 'coc-pairs',
			\ 'coc-json']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif


" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
\ coc#pum#visible() ? coc#pum#next(1):
\ <SID>check_back_space() ? "\<Tab>" :
\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

let g:coc_snippet_next = '<tab>'

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gf <Plug>(coc-references)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

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

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>fo  <Plug>(coc-format-selected)
nmap <leader>fo  <Plug>(coc-format-selected)
"


set title
let &titlestring="%{substitute(expand('%:p'), $HOME, '$HOME', '')}"

" Netrw
" map <C-n> :40vs +Ex<CR>
let g:netrw_liststyle=3
let g:netrw_browse_split = 4 " Open netrw browse file in previous buffer

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline=""
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

set statusline=%t       "tail of the filename
set statusline+=\ %{&ff}  "file format
set statusline+=%y "filetype
set statusline+=\ %h      "help file flag
set statusline+=%m"modified flag
set statusline+=%r "read only flag
:set statusline+=%=
set statusline+=Ln\ %l/%L,"cursor line/total lines
set statusline+=\ Col\ %c "cursor column
set statusline+=\ %P "percent through file

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" End Coc settings
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Start Rust settings
let g:rustfmt_autosave = 1
let g:rust_clip_command = 'xclip -selection clipboard'
" End Rust settings

autocmd FileType vim setlocal commentstring=" \ %s
command! Prettier :CocCommand prettier.formatFile
" :sp | term

nnoremap <leader>s :set spell!<CR>

imap <C-k> <Plug>(coc-snippets-expand)

" Abbreviations
iabbrev @@ tim@pakkianathan.com
iabbrev teh the
iabbrev waht what

" highlight trailing whitespace
match ErrorMsg '\s\+$'
" remove trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e
set autoread
au CursorHold * checktime

" get the result of test failures in quick fix
" let test#strategy = "dispatch"

if has('nvim')
	tnoremap <C-J> <C-\><C-n><C-W><C-J>
	tnoremap <C-H> <C-\><C-n><C-W><C-H>
	tnoremap <C-K> <C-\><C-n><C-W><C-K>
	tnoremap <C-L> <C-\><C-n><C-W><C-L>
endif

" start settings for 'christoomey/vim-system-copy'
if has('unix')
	let g:system_copy#copy_command='pbcopy'
	let g:system_copy#paste_command='pbpaste'
	" let g:system_copy#copy_command='xclip -sel clipboard'
	" let g:system_copy#paste_command='xclip -sel clipboard -o'
else
	let g:system_copy#copy_command='clip'
	let g:system_copy#paste_command='paste'
endif
" end settings for 'christoomey/vim-system-copy'

autocmd FileType haskell setlocal shiftwidth=2 softtabstop=2 expandtab

" Start Setting for the grepper plugin
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

" End Setting for the grepper plugin

" Start Fugitive settings
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gps :Git push<CR>
nnoremap <leader>gpl :Git pull<CR>
" End Fugitive settings

inoremap jk <Esc>

echom "    ◙‿◙ ♥◡♥ (⌐■_■)    "
