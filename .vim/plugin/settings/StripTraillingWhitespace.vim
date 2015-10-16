let s:strip_black_list = ['mkd', 'markdown']

fun! StripTrailingWhitespace()
  let current_filetype = &filetype
  let filetypes = split(current_filetype, '\.')
  " Don't strip on these filetypes
  for type in filetypes
    if index(s:strip_black_list, type) >= 0
      return
    endif
  endfor
  %s/\s\+$//e
endfun

au! BufWritePre * call StripTrailingWhitespace()
