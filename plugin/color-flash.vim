" #FF00AA
" #ABCDEF
" blue 

if exists('g:loaded_color_flash') || v:version < 700|| &cp
  finish
endif
let g:loaded_color_flash = 1

" calling  expand('<sfile>') gives the name of the enclosing function, so we
" have to do it in advance
let s:script_path = expand('<sfile>:p:h').'/flash.py'

noremap gC :call ColorFlash( expand('<cword>') )<CR>

function! ColorFlash(...)
  " get current word
  let s:word = a:1
  let s:output = system("python ".s:script_path." \"".s:word."\"")
  echom s:output
endfunction
