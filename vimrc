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
" Status bar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" command bar height
set cmdheight=2

" always show status line
set laststatus=2

" Automated wordcount addition, taken from 
" http://stackoverflow.com/questions/114431/fast-word-count-function-in-vim
function! WordCount()
   let s:old_status = v:statusmsg
   let position = getpos(".")
   exe ":silent normal g\<c-g>"
   let stat = v:statusmsg
   let s:word_count = 0
   if stat != '--No lines in buffer--'
     let s:word_count = str2nr(split(v:statusmsg)[11])
     let v:statusmsg = s:old_status
   end
   call setpos('.', position)
   return s:word_count 
endfunction

" Set statusline, shown here a piece at a time
highlight User1 ctermbg=darkgrey guibg=darkgrey ctermfg=black guifg=black
set statusline=%1*                                          " Switch to User1 color highlight
set statusline+=%<%F                                        " file name, cut if needed at start
set statusline+=\ [%{&ff}:                                    " [fileformat
set statusline+=%{&fileencoding?&fileencoding:&encoding}:   " filenecoding
set statusline+=%Y]		                                    " file type
set statusline+=%M                                          " modified flag
set statusline+=%=                                          " separator from left to right justified
set statusline+=\ %{WordCount()}\ words,                    " word count
"set statusline+=\ col:%3c                                  " column number, padded to 3 digits
set statusline+=\ %4l/%4L\ lines,\ %P	                    " lines, padded to 4 digits, percentage through the file

" show partial commands in status line
set showcmd


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
