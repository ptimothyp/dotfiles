syntax on
filetype plugin on
filetype indent on
:set guioptions-=m
:set guioptions-=T
:set guioptions-=r
:set gfn=DejaVu\ Sans\ Mono\ 10
call pathogen#infect()
syntax enable
set background=dark
colorscheme solarized
map <F2> :NERDTreeToggle<CR>

let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = "/Users/timothy/source/nailgun/ng"
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
