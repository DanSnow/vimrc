autocmd FileType javascript noremap <buffer>  <F6> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <F6> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <F6> :call CSSBeautify()<cr>
