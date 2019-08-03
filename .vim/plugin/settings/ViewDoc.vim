let g:viewdoc_open = 'new'
let g:no_viewdoc_maps = 1
nnoremap <unique> K     :call ViewDoc('doc', '<cword>')<CR>
