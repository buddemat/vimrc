"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Matthias Budde
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" numbered lines
set number

" colorscheme
set background=dark


try
    colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme desert
endtry
