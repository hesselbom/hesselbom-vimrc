" Various
syntax on
colorscheme jellybeans
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
set number
set mouse=a
set paste
set hidden
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,  case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" Encoding
set enc=utf-8
set bomb
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

" Directions
map <M-Left> b
map <M-Right> w

" Indent
set autoindent
set cindent

filetype on
filetype plugin on
filetype indent on

" Tabs
set expandtab
set shiftwidth=4  " number of spaces to use for autoindenting
set tabstop=4     " a tab is four spaces
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop

nmap <S-Tab> <<
nmap <Tab> >>
imap <S-Tab> <Esc><<i

" Cursor position
set cursorline cursorcolumn

" Run modules
autocmd VimEnter * NERDTree

" Global variables
let NERDTreeShowHidden = 1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_no_startup_for_diff = 0
let mapleader = ","
