"
" Justin Ethier
" my vimrc
"
" vim has a great set of defaults, the intent here 
" is mostly to keep things simple. There is also a
" tips section at the end, mostly as a reminder to
" myself...
"

" My preferred defaults for editing
"set background=dark     " enable for dark terminals
"set nowrap              " dont wrap lines
set autoindent
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase characters
set smartindent         " smart auto indenting
"set smarttab            " smart tab handling for indenting
set tabstop=4           " number of spaces a tab counts for
set shiftwidth=4        " spaces for autoindents
set expandtab           " turn a tab into spaces
set hlsearch            " highlight search results

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

" paste mode toggle (needed when using autoindent/smartindent)
" taken from http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim
map <F10> :set paste<CR>
map <F11> :set nopaste<CR>
imap <F10> <C-O>:set paste<CR>
imap <F11> <nop>
set pastetoggle=<F11>

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