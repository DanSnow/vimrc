let s:strip_black_list = ['mkd']


fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if index(s:strip_black_list, &ft) >= 0
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()
