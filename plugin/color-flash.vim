" #FF00AA
" #ABCDEF
" blue 

if exists('g:loaded_color_flash') || &cp
  finish
endif
let g:loaded_color_flash = 1

noremap gC :call ColorFlash( <cword> )<CR>

function! ColorFlash()

" get current word
let s:word = a:0
" TODO validate word as a color
let s:script_path_dir = expand('<sfile>:p:h')
let s:output = system("python ".s:script_path_dir."/flash.py \"".s:word."\" &")

endfunction
