function! SplitOpen()
  let v:errmsg = ""
  normal gf
  if v:errmsg == ""
    vertical sbp
    wincmd H
    wincmd l
    vertical resize 40
    wincmd h
  endif
endf
map gw <Esc>:call SplitOpen()<CR>
