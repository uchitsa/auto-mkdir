" plugin/automkdir.vim
function! s:AutoMkdir()
  let dir = expand('%:p:h')
  if !isdirectory(dir) && exists('*mkdir')
    call mkdir(dir, 'p')
    echo "created directory: " . dir
  endif
endfunction

augroup AutoMkdir
    autocmd!
    autocmd BufWritePre * call s:AutoMkdir()
augroup END
