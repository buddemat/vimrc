"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Matthias Budde
"
" 2020 - 2023
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


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
