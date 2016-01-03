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

"set a default time-out value, if the user hasn't set one
if !exists('g:vim_color_flash_timeout')
	let g:vim_color_flash_timeout = 1
endif

nnoremap <silent> <Plug>(colorflash-gc) :<C-u>call ColorFlash(expand('<cword>'))<CR>
nmap gC <Plug>(colorflash-gc)

function! ColorFlash(...)
  " get current word
  let s:word = a:1
	let s:output = system(
		\ "python ".s:script_path." \"".s:word."\" ".g:vim_color_flash_timeout)
  echom s:output
endfunction
