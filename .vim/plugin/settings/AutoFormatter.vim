map <F6> :Autoformat<Cr><Cr>

" For astyle
let g:formatdef_astyle = '"astyle --style=google"'
let g:formatters_c = ['astyle']
let g:formatters_cpp = ['astyle']
let g:formatters_java = ['astyle']

let g:formatdef_html = '"html-beautify -I -s 2"'
let g:formatters_html = ['html']
let g:formatdef_css = '"css-beautify -s 2"'
let g:formatters_css = ['css']
