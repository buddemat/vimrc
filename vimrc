"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Matthias Budde
"
" 2020 - 2023
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setup / init
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" prevent vim from limiting its behaviour to that of the original vi
" because it has side effects, this line must be the first one.
set nocompatible

" automatically detect file types
filetype plugin on

" no modeline allowed for security reasons
set nomodeline

" enable syntax highlighting
syntax on

" enable mouse support in all modes
set mouse=a

" encoding
set encoding=utf-8
setglobal fileencoding=utf-8

" do not keep a backup file
set nobackup


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" numbered lines, set to take up 5 spaces
set number
set numberwidth=5

" colorscheme
try
    colorscheme solarized
catch
    colorscheme desert
endtry
set background=dark

" show colored column at 80 chars
set colorcolumn=80
highlight ColorColumn ctermbg=darkblue guibg=darkblue

" when last line does not fit in window, display as much as possible rather
" than replacing it with '@'-lines
set display=lastline

" minimum number of lines to kept above/below cursor when scrolling
set scrolloff=3


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enables automatic indentation as you type
filetype indent on

" indent at same level as previous line
set autoindent

" indents of 4 spaces
set shiftwidth=4

" try guessing the right indentation
set smartindent

" set tab character to 4 characters
set tabstop=4 

" turn tabs into whitespace
set expandtab 

" allow backspacing over auto indent, over line breaks and over the start of
" current insert
set backspace=indent,eol,start

" when a bracket is inserted, briefly jump to corresponding one
set showmatch

" let the cursor stray beyond the defined text in visual block mode 
set virtualedit=block
