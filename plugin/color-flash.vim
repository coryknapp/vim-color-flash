" #FF00AA
" #ABCDEF
" blue 

if exists('g:loaded_color_flash') || &cp
"  finish
endif
let g:loaded_color_flash = 1

noremap gC :call ColorFlash( "red" )<CR>
" expand('<cword>') )<CR>

function! ColorFlash(...)
	" get current word
	let s:word = a:1
	" TODO validate word as a color
	" TODO this next line must be in production, not the next line after
	let s:script_path = expand('<sfile>:p:h').'/flash.py'
	"let s:script_path = expand('<sfile>:p:h').'/plugin/flash.py'
	let s:output = system("python ".s:script_path." \"".s:word."\"")
	echom s:output
endfunction
