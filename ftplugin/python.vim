" Always use SuperTab for python
" for some reasons i dont understand the code at .vimrc wont work :(
call SuperTabSetDefaultCompletionType('<c-x><c-o>')


" Python default Tabstops 
setlocal tabstop=8
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4


" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" alternatively disable preview 
" setlocal completeopt-=preview 


" Disable smartindent, to prevent the # on the start of the line bug
" see:  http://stackoverflow.com/questions/2063175/vim-insert-mode-comments-go-to-start-of-line
setlocal nosmartindent
