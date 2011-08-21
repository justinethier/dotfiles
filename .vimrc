set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Turn off error bells
set noerrorbells

" spelling
if v:version >= 700
  " Enable spell check for text files
    autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
    endif
