" Plugins
so ~/hesselbom-vimrc/plugins/autoclose.vim

" Various
syntax on
colorscheme jellybeans
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
set number
set mouse=a

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
set shiftwidth=4
set tabstop=4

nmap <S-Tab> <<
nmap <Tab> >>
imap <S-Tab> <Esc><<i

" Cursor position
set cursorline cursorcolumn

" Run modules
autocmd VimEnter * NERDTree
