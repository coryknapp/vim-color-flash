" #FF00AA
" #ABCDEF
" blue 
noremap gC :call ColorFlash()<CR>

function! ColorFlash()

" get current word
let s:word = expand ( "<cword>" )
" TODO validate word as a color
let s:script_path_dir = expand('<sfile>:p:h')
let s:output = system("python ".s:script_path_dir."/flash.py \"".s:word."\" &")

endfunction
