" ~/.vim/ftdetect/dart.vim file
au BufRead,BufNewFile *.dart set filetype=dart

" Replace path to sdk for analyzer setup
set makeprg=$DART_SDK/bin/dart_analyzer\ --enable_type_checks\ %\ 2>&1\ \\\|\ sed\ 's/file://'
