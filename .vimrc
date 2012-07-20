"
" Justin Ethier's vimrc
"
" vim has a great set of defaults, so the intent here is to make a few 
" simple, practical tweaks. There is also a tips section at the end to 
" serve as a reminder to myself of several handy features...
"

" My preferred defaults for editing
"set background=dark     " enable for dark terminals
"set nowrap              " don't wrap lines
set autoindent
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase characters
set smartindent         " smart auto indenting
"set smarttab            " smart tab handling for indenting
set tabstop=4           " number of spaces a tab counts for
set shiftwidth=4        " spaces for autoindents
set expandtab           " turn a tab into spaces
set hlsearch incsearch  " highlight search results

" Disabled since this is only available in vim 7.3+
"set relativenumber      " change line number col to display how far away each
"                        " line is from the current one, instead of absolute #

" Disabled for now, maybe will try again in the future
" Remap esp to jj because it is easier to type
" :inoremap jj <esc>
" :inoremap <esc> :echo "Type jj instead"

" Make leader easy to type
:let mapleader = ","

" Edit my Vimrc file
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source (reload) my Vimrc file
:nnoremap <leader>sv :source $MYVIMRC<cr>


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

" Fast buffer switching
:nnoremap <F5> :buffers<CR>:buffer<Space>

" Paste mode toggle (needed when using autoindent/smartindent)
" When enabled this prevents vim from re-tabbing code when pasting large blocks
" From http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim
noremap <F10> :set paste<CR>
noremap <F11> :set nopaste<CR>
inoremap <F10> <C-O>:set paste<CR>
inoremap <F11> <nop>
set pastetoggle=<F11>

" This command can fix syntax highlighting problems, 
" but at the expense of speed...
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" TIPS Section """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" 'Tab' completion overview from 
"" http://robots.thoughtbot.com/post/27041742805/vim-you-complete-me
"" key  description
"" ^P	basic tab completion, pulling from a variety of sources
"" ^N	the same as ^P but backward
"" ^X ^L	whole line completion
"" ^X ^O	syntax-aware omnicompletion
""
"" Can use this mapping to remap completion to tab:
" imap <Tab> <C-P>
""

" A plugin for running shell programs within vim
" http://code.google.com/p/conque/

" Identify home directory on Windows
" :echo $HOME

" Run the current file you're editing. 
" :!%

" Auto-complete
" Ctrl-N / Ctrl-P

" select lines in visual mode and sort them using
" :sort

" A reminder of one way of placing quotes around a target regex
" See also http://vimregex.com/#backreferences
" %s/assert-equal /([0-9]\.[0-9]*\) /assert-equal "\1" /
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""