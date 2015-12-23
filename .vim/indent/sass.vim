" Vim indent file
" Language:	Sass
" Maintainer:	Tim Pope <vimNOSPAM@tpope.org>
" Modified:	Viktor Hesselbom <viktor@hesselbom.net>
" Last Change:	2015 December 23

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal autoindent sw=2 et
setlocal indentexpr=GetSassIndent()
setlocal indentkeys=o,O,*<Return>,<:>,!^F

" Only define the function once.
if exists("*GetSassIndent")
  finish
endif

let s:property = '^\s*:\|^\s*[[:alnum:]#{}-]\+\%(:\|\s*=\)'
let s:extend = '^\s*\%(@extend\|@include\|+\)'

function! GetSassIndent()
  let lnum = prevnonblank(v:lnum-1)
  let line = substitute(getline(lnum),'\s\+$','','')
  let cline = substitute(substitute(getline(v:lnum),'\s\+$','',''),'^\s\+','','')
  let lastcol = strlen(line)
  let line = substitute(line,'^\s\+','','')
  let indent = indent(lnum)
  let cindent = indent(v:lnum)
  echom "Line:" . line
  echom "CLine:" . cline
  if line !~ s:property && strlen(line) != 0
    echom "Return indent +"
    return indent + &sw
  else
    echom "Return indent"
    return indent
  endif
  " if line !~ s:property && line !~ s:extend && cline =~ s:property
  "   echom "Return indent +"
  "   return indent + &sw
  " elseif line =~ s:property && strlen(cline) == 0
  "   echom "Return indent"
  "   return indent
  " elseif line =~ s:property && cline !~ s:property
  "   echom "Return indent -"
  "   return indent - &sw
  " else
  "   echom "Return -1"
  "   return -1
  " endif
endfunction

" vim:set sw=2:
