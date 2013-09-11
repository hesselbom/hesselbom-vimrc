" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Map jk and kj to <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

" Color scheme
if has('gui_running')
    colorscheme zenburn-hesselbom
else
    colorscheme zenburn-hesselbom
endif

" Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 8
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Various
syntax on
set number
set mouse=a
set clipboard=unnamed
set hidden
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,  case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile
set pastetoggle=<F2>
set guioptions=          " Remove gui elements
set laststatus=2         " Always show status bar
set switchbuf=split      " Always open quickfix results in new split

" Ignore
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildignore+=.DS_Store
set wildignore+=.sass-cache
set wildignore+=node_modules
set wildignore+=mage--*
set wildignore+=build

" Encoding
set enc=utf-8
set nobomb
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

" Directions
map <M-Left> b
map <M-Right> w
nnoremap <C-j> 5j
nnoremap <C-k> 5k
vnoremap <C-j> 5j
vnoremap <C-k> 5k

" Scroll
set scrolloff=7
set scroll=15

" Indent
set autoindent
set cindent

filetype on
filetype plugin on
filetype indent on

set list
set listchars=tab:>-,trail:·,extends:>,precedes:<,nbsp:&

" Tabs
set expandtab
set shiftwidth=4  " number of spaces to use for autoindenting
set tabstop=4     " a tab is four spaces
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop

nmap <S-Tab> <<
nmap <Tab> >>
imap <S-Tab> <Esc><<i

" MacVim
" Alt w hl to cycle macvim windows
noremap Ω˛ :maca _cycleWindowsBackwards:<CR>
noremap Ωﬁ :maca _cycleWindows:<CR>
" Alt hl to cycle tabs
noremap ˘ :tabprev<CR>
noremap ﬂ :tabnext<CR>
" Alt keys to toggle window
nnoremap ª :wincmd k<CR>
nnoremap √ :wincmd j<CR>
nnoremap ˛ :wincmd h<CR>
nnoremap ﬁ :wincmd l<CR>

" Cursor position
set cursorline cursorcolumn

" Run modules
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/plugin/closetag.vim
autocmd FileType php,phtml set omnifunc=phpcomplete#CompletePHP

au BufRead,BufNewFile todo.txt,*.todo.txt,recur.txt,*.todo set filetype=todo

autocmd BufLeave * ccl

" Global variables
let mapleader = ","
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_height = 20
let g:ctrlp_max_files = 100000
let g:ctrlp_open_new_file = 'r'
let Grep_Default_Options = '-rs'

" Buffers
nnoremap <C-H> :bp<cr>
nnoremap <C-L> :bn<cr>
nnoremap <C-B> :buffers<cr>

" CtrlP
nnoremap π :CtrlPBuffer<cr>
