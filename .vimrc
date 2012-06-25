"
" Justin Ethier
" my vimrc
"
" vim has a great set of defaults, the intent here 
" is mostly to keep things simple. There is also a
" tips section at the end, mostly as a reminder to
" myself...
"

" My preferred defaults for tabs and spaces
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch

" Enable to practice using vim without arrow keys
" See vim anti-patterns: http://blog.sanctum.geek.nz/vim-anti-patterns/
"noremap <Up> <nop>
"noremap <Down> <nop>
"noremap <Left> <nop>
"noremap <Right> <nop>

" Map w!! to simulate "sudo vim file"
cmap w!! %!sudo tee > /dev/null %

" Turn off error bells
set noerrorbells

" spelling
if v:version >= 700
  " Enable spell check for text files
    autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
    endif

" This command can fix syntax highlighting problems, 
" but at the expense of speed...
"noremap <F12> <Esc>:syntax sync fromstart<CR>
"inoremap <F12> <C-o>:syntax sync fromstart<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" TIPS Section

" This is not a keybinding but a reminder:
" :set paste This will prevent vim from re-tabbing your code when pasting large blocks
" :set nopaste will disable paste mode

" select lines in visual mode and
" :sort

" Run the current file you're editing. 
" :!%

" Auto-complete
" Ctrl-N / Ctrl-P

"""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""