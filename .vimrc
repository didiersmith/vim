syntax enable
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
au BufRead,BufNewFile *.go set filetype=go
"filetype indent on


" Ignore compiled files
set wildmenu
set wildignore=*.o,*~,*.pyc,*.d

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

set hidden

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set ai " auto indent
"set si " smart indent

autocmd BufWritePre * :%s/\s\+$//e

set number
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <C-Down> <C-W>j
map <C-Up> <C-W>k
map <C-Left> <C-W>h
map <C-Right> <C-W>l

set pastetoggle=<c-p>

set incsearch
set magic

set nobackup
set nowb
set noswapfile
highlight PmenuSel ctermfg=black ctermbg=white
highlight Pmenu ctermfg=white ctermbg=grey

" Insert newlines where you are
"nmap <CR> a<CR><Esc>

" This somma cray shit
inoremap hh <Esc>

" Do registers with , instead of "
noremap , "

"set mouse=a

noremap <ScrollWheelUp> k<C-Y>
noremap <ScrollWheelDown> j<C-E>

imap <ScrollWheelUp> <Up><Up><Up>
imap <ScrollWheelDown> <Down><Down><Down>

set scrolloff=5

" Autocomplete with ctrl+t
imap <c-t> <c-x><c-u>

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%>80v.\+/
