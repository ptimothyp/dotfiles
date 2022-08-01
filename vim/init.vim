if &compatible
" `:set nocp` has many side effects. Therefore this should be done
"   " only when 'compatible' is set.
	set nocompatible
endif

set path+=**
syntax on " Enable syntax highlighting
filetype indent on " Enable indenting for files

function! PackInit() abort
	packadd minpac
	call minpac#init()
	call minpac#add('gruvbox-community/gruvbox')
	call minpac#add('janko-m/vim-test')
	call minpac#add('jparise/vim-graphql')
	call minpac#add('junegunn/fzf')
	call minpac#add('junegunn/fzf.vim', {'type': 'opt'})
	call minpac#add('k-takata/minpac', {'type': 'opt'})
	call minpac#add('leafgarland/typescript-vim')
	call minpac#add('machakann/vim-highlightedyank')
	call minpac#add('mattn/emmet-vim')
	call minpac#add('mhinz/vim-grepper')
	call minpac#add('neoclide/coc.nvim')
	call minpac#add('pangloss/vim-javascript')
	call minpac#add('peitalin/vim-jsx-typescript')
	call minpac#add('preservim/nerdtree')
	call minpac#add('radenling/vim-dispatch-neovim')
	call minpac#add('rust-lang/rust.vim')
	call minpac#add('styled-components/vim-styled-components', { 'branch': 'main' })
	call minpac#add('tpope/vim-commentary')
	call minpac#add('tpope/vim-dispatch')
	call minpac#add('tpope/vim-fugitive')
	call minpac#add('tpope/vim-projectionist')
	call minpac#add('tpope/vim-surround')
	call minpac#add('tpope/vim-unimpaired')
	call minpac#add('vim-syntastic/syntastic')
	call minpac#add('w0rp/ale')
endfunction

command! PackUpdate call PackInit() | call minpac#update()
command! PackClean call PackInit() | call minpac#clean()

let mapleader = " "
set rtp+=C:\Users\Timothy\scoop\apps\fzf

" Shortcuts for split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

silent nmap <C-p> :FZF<CR>
let g:fzf_buffers_jump = 1

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set shiftround
set smartindent
set guifont=Fira\ Code:h14
set cursorline

set nocompatible " Use Vim settings, rather than Vi settings
set softtabstop=2 " Indent by 2 spaces when hitting tab
set shiftwidth=2 " Indent by 4 spaces when auto-indenting
set tabstop=2 " Show existing tab with 4 spaces width
syntax on " Enable syntax highlighting
filetype indent on " Enable indenting for files
set smartcase " Case insensitive search till you put in a capital character
set number " Enable line numbers

" Editor theme
" colorscheme desert " Set nice looking colorscheme
colorscheme gruvbox " Set nice looking colorscheme
set background=dark
set colorcolumn=80 " Set column 80 color

set noswapfile " Don't create temporary swap files
set nobackup " Disable backup files
set laststatus=2 "show status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set wildmenu " Display command line's tab complete options as a menu.

set directory=$HOME/vimfiles/swp//
set undofile " Create separate undo file
set undodir=~/vimfiles/undodir " The undo directory this needs to be present

" Nerdtree customization
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"


let g:ale_fix_on_save=1
let g:ale_fixers = {
\ 'javascript':['eslint', 'prettier'],
\ 'typescript':['eslint', 'prettier']
\}

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

" " GoTo code navigation.
" nmap <leader>gd <Plug>(coc-definition)
" nmap <leader>gy <Plug>(coc-type-definition)
" nmap <leader>gi <Plug>(coc-implementation)
" nmap <leader>gr <Plug>(coc-references)
" nmap <leader>rr <Plug>(coc-rename)
" nmap <leader>rpr :CocSearch <C-R>=expand("<cword>")<CR><CR>
" nmap <leader>g[ <Plug>(coc-diagnostic-prev)
" nmap <leader>g] <Plug>(coc-diagnostic-next)
" nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
" nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
" nnoremap <leader>cr :CocRestart
" nmap <leader>do <Plug>(coc-codeaction)
" nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

" function! ShowDocIfNoDiagnostic(timer_id)
" 	if (coc#util#has_float() == 0)
" 			silent call CocActionAsync('doHover')
" 	endif
" endfunction

" function! s:show_hover_doc()
" 	call timer_start(500, 'ShowDocIfNoDiagnostic')
" endfunction

" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()

" nnoremap silent <M-left> :vertical resize -5<cr>
" nnoremap silent <M-down> :resize +5<cr>
" nnoremap silent <M-up> :resize -5<cr>
" nnoremap silent <M-right> :vertical resize +5<cr>


if has('nvim')
	tnoremap <Esc> <C-\><C-n>
	" tnoremap <M-[> <Esc>
	tnoremap <C-J> <C-\><C-n><C-W><C-J>
	tnoremap <C-H> <C-\><C-n><C-W><C-H>
	tnoremap <C-K> <C-\><C-n><C-W><C-K>
	tnoremap <C-L> <C-\><C-n><C-W><C-L>

endif

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

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
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

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
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

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
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

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



set listchars=eol:¶,tab:>-,trail:~,extends:>,precedes:<
set list
