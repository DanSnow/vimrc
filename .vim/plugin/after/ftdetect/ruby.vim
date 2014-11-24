" Ruby
" if executable("ruby")
"   autocmd BufRead,BufNewFile *.rb map <F5> :% w !ruby -w<CR>
" else
"   autocmd BufRead,BufNewFile *.rb map <F5> :echo "you need to install Ruby first!"<CR>
" endif

autocmd FileType ruby nmap <buffer> <F10> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F10> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F10> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <F11> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F11> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F11> <Plug>(xmpfilter-run)

