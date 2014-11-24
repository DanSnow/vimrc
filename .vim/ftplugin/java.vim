map <F6> :w<CR>:%!astyle -A2 -wpyn -k3 -W3 -s2<CR>:w<CR>
imap <F6> <Esc><F6>i

inoremap  <buffer>  {<CR>    {<CR>}<Esc>O
vnoremap  <buffer>  {<CR>   S{<CR>}<Esc>Pk=iB
