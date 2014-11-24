" VimScript
autocmd BufRead,BufNewFile *.vim map <F9> :source %<CR>:echon "script reloaded!"<CR>
