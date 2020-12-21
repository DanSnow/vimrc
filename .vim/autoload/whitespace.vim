scriptencoding utf-8

let s:show_message = get(g:, 'whitespace#show_message', 1)
let s:symbol = get(g:, 'whitespace#symbol', ' ')
let s:default_checks = ['indent', 'trailing', 'mixed-indent-file', 'conflicts']

let s:skip_check_ft = {'make': ['indent', 'mixed-indent-file']}

function! s:check_mixed_indent()
  let indent_algo = get(g:, 'whitespace#mixed_indent_algo', 0)
  if indent_algo == 1
    " [<tab>]<space><tab>
    " spaces before or between tabs are not allowed
    let t_s_t = '(^\t* +\t\s*\S)'
    " <tab>(<space> x count)
    " count of spaces at the end of tabs should be less than tabstop value
    let t_l_s = '(^\t+ {' . &ts . ',}' . '\S)'
    return search('\v' . t_s_t . '|' . t_l_s, 'nw')
  elseif indent_algo == 2
    return search('\v(^\t* +\t\s*\S)', 'nw')
  else
    return search('\v(^\t+ +)|(^ +\t+)', 'nw')
  endif
endfunction

function! s:check_mixed_indent_file()
  let c_like_langs = get(g:, 'whitespace#c_like_langs',
        \ [ 'arduino', 'c', 'cpp', 'cuda', 'go', 'javascript', 'ld', 'php' ])
  if index(c_like_langs, &ft) > -1
    " for C-like languages: allow /** */ comment style with one space before the '*'
    let head_spc = '\v(^ +\*@!)'
  else
    let head_spc = '\v(^ +)'
  endif
  let indent_tabs = search('\v(^\t+)', 'nw')
  let indent_spc  = search(head_spc, 'nw')
  if indent_tabs > 0 && indent_spc > 0
    return printf("%d:%d", indent_tabs, indent_spc)
  else
    return ''
  endif
endfunction

function! s:conflict_marker()
  " Checks for git conflict markers
  let annotation = '\%([0-9A-Za-z_.:]\+\)\?'
  let pattern = '^\%(\%(<\{7} '.annotation. '\)\|\%(=\{7\}\)\|\%(>\{7\} '.annotation.'\)\)$'
  return search(pattern, 'nw')
endfunction

function! whitespace#check()
  let max_lines = get(g:, 'whitespace#max_lines', 20000)
  if &readonly || !&modifiable || line('$') > max_lines
          \ || get(b:, 'airline_whitespace_disabled', 0)
    return ''
  endif
  let skip_check_ft = extend(s:skip_check_ft,
        \ get(g:, 'whitespace#skip_indent_check_ft', {}), 'force')

  if !exists('b:airline_whitespace_check')
    let b:airline_whitespace_check = ''
    let checks = get(b:, 'whitespace_checks', get(g:, 'whitespace#checks', s:default_checks))

    let trailing = 0
    let check = 'trailing'
    if index(checks, check) > -1 && index(get(skip_check_ft, &ft, []), check) < 0
      try
        let regexp = get(g:, 'whitespace#trailing_regexp', '\s$')
        let trailing = search(regexp, 'nw')
      catch
        echomsg printf('Whitespace: error occurred evaluating "%s"', regexp)
        echomsg v:exception
        return ''
      endtry
    endif

    let mixed = 0
    let check = 'indent'
    if index(checks, check) > -1 && index(get(skip_check_ft, &ft, []), check) < 0
      let mixed = s:check_mixed_indent()
    endif

    let mixed_file = ''
    let check = 'mixed-indent-file'
    if index(checks, check) > -1 && index(get(skip_check_ft, &ft, []), check) < 0
      let mixed_file = s:check_mixed_indent_file()
    endif

    let long = 0
    if index(checks, 'long') > -1 && &tw > 0
      let long = search('\%>'.&tw.'v.\+', 'nw')
    endif

    let conflicts = 0
    if index(checks, 'conflicts') > -1
      let conflicts = s:conflict_marker()
    endif

    if trailing != 0 || mixed != 0 || long != 0 || !empty(mixed_file) || conflicts != 0
      let b:airline_whitespace_check = ''
      if strlen(s:symbol) > 0
        let space = s:symbol
      else
        let space = ''
      endif

      if trailing != 0
        let trailing_fmt = get(g:, 'whitespace#trailing_format', 't: %s')
        let b:airline_whitespace_check .= space.printf(trailing_fmt, trailing)
      endif
      if !empty(mixed_file)
        let mixed_indent_file_fmt = get(g:, 'whitespace#mixed_indent_file_format', 'm: %s')
        let b:airline_whitespace_check .= space.printf(mixed_indent_file_fmt, mixed_file)
      endif
      if conflicts != 0
        let conflicts_fmt = get(g:, 'whitespace#conflicts_format', 'c: %s')
        let b:airline_whitespace_check .= space.printf(conflicts_fmt, conflicts)
      endif
    endif
  endif
  return b:airline_whitespace_check
endfunction

unlet! b:airline_whitespace_check
" augroup airline_whitespace
"   autocmd!
"   autocmd CursorHold,BufWritePost * call <sid>ws_refresh()
" augroup END

" function! s:ws_refresh()
"   if get(b:, 'airline_ws_changedtick', 0) == b:changedtick
"     return
"   endif
"   unlet! b:airline_whitespace_check
"   call lightline#update_once()
"   let b:airline_ws_changedtick = b:changedtick
" endfunction
