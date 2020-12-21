let g:lightline = {
      \   'colorscheme': 'one',
      \   'tabline': {
      \     'left': [
      \       ['bufferinfo'],
      \       ['separator'],
      \       ['bufferbefore', 'buffercurrent', 'bufferafter'],
      \     ],
      \     'right': [
      \       ['close'],
      \     ],
      \   },
      \   'active': {
      \     'left': [
      \       ['mode', 'paste'],
      \       ['gitbranch', 'readonly', 'filename', 'modified']
      \     ],
      \     'right': [
      \       ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok', 'whitespace'],
      \       ['indent', 'lineinfo', 'percent'],
      \       ['fileformat', 'fileencoding', 'filetype']
      \     ],
      \   },
      \   'component': {
      \     'lineinfo': ' %3l:%-2v',
      \     'separator': '',
      \   },
      \   'component_function': {
      \     'mode': 'LightlineMode',
      \     'indent': 'IndentInfo',
      \     'filename': 'LightlineFilename',
      \     'gitbranch': 'LightlineBranch',
      \     'filetype': 'LightlineFiletype',
      \     'fileformat': 'LightlintFileformat',
      \     'bufferinfo': 'lightline#buffer#bufferinfo',
      \   },
      \   'component_expand': {
      \     'linter_checking': 'lightline#ale#checking',
      \     'linter_warnings': 'lightline#ale#warnings',
      \     'linter_errors': 'lightline#ale#errors',
      \     'linter_ok': 'lightline#ale#ok',
      \     'whitespace': 'whitespace#check',
      \     'buffercurrent': 'lightline#buffer#buffercurrent',
      \     'bufferbefore': 'lightline#buffer#bufferbefore',
      \     'bufferafter': 'lightline#buffer#bufferafter',
      \   },
      \   'component_type': {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \     'whitespace': 'warning',
      \     'buffercurrent': 'tabsel',
      \     'bufferbefore': 'raw',
      \     'bufferafter': 'raw',
      \   },
      \   'separator': {
      \     'left': '',
      \     'right': '',
      \   },
      \   'subseparator': {
      \     'left': '',
      \     'right': '',
      \   },
      \ }

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf05e "
let g:lightline#ale#indicator_ok = "\uf00c"

let g:lightline_buffer_logo = ' '
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '✭'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = '  '
let g:lightline_buffer_enable_devicons = 1

" lightline-buffer function settings
let g:lightline_buffer_show_bufnr = 1

" :help filename-modifiers
let g:lightline_buffer_fname_mod = ':t'

" hide buffer list
" let g:lightline_buffer_excludes = ['vimfiler']

" max file name length
let g:lightline_buffer_maxflen = 30

" max file extension length
let g:lightline_buffer_maxfextlen = 3

" min file name length
let g:lightline_buffer_minflen = 16

" min file extension length
let g:lightline_buffer_minfextlen = 3

" reserve length for other component (e.g. info, close)
let g:lightline_buffer_reservelen = 20

call denite#custom#option('_', 'statusline', v:false)
set noshowmode

function! LightlineMode()
  if &ft == 'denite' || &ft == 'denite-filter'
    return '['. &ft . '] - ' . denite#get_status('sources')
  else
    return winwidth(0) > 60 ? lightline#mode() : ''
  endif
endfunction

function! LightlineFilename()
  if &ft == 'denite' || &ft == 'denite-filter'
    return ''
  else
    return expand('%:t')
  endif
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! LightlintFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! IndentInfo() abort
  let l:indent_type = &expandtab ? 'spaces' : 'tabs'
  return l:indent_type.': '.&shiftwidth
endfunction

function! LightlineBranch()
  let branch = fugitive#head()

  if branch != ''
    return ' '. branch
  endif

  return ''
endfunction
