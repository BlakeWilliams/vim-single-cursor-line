if exists("g:loaded_single_cursor_line")
  finish
endif

let g:loaded_single_cursor_line = 1

function! single_cursor_line#show()
  setlocal cursorline
endfunction

function! single_cursor_line#hide()
  setlocal nocursorline
endfunction

au WinEnter * call single_cursor_line#show()
au WinLeave * call single_cursor_line#hide()
