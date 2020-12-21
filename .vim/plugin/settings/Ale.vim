autocmd FileType javascript call s:register_import_sort()
autocmd FileType typescript call s:register_import_sort()

let s:registered_import_sort = v:false

function s:register_import_sort()
  if s:registered_import_sort
    return
  endif

  let s:registered_import_sort = v:true
  call ale#fix#registry#Add(
        \ 'import_sort',
        \ 'ale#fixers#import_sort#Fix',
        \ ['javascript', 'typescript'],
        \ 'Sort import with import-sort',
        \ ['import-sort']
        \ )
endfunction

let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\   'python': [
\       'black',
\       'isort',
\   ],
\   'c': [
\     'clang-format',
\   ],
\   'cpp': [
\     'clang-format',
\   ],
\   'javascript': [
\     'prettier',
\     'eslint',
\   ],
\   'typescript': [
\     'prettier',
\     'eslint',
\   ],
\   'json': [
\     'prettier',
\   ],
\   'html': [
\     'prettier',
\   ],
\   'rust': [
\     'rustfmt',
\   ],
\   'markdown': [],
\}
let g:ale_linters = {'rust': ['analyzer'], 'c': ['clangd', 'cppcheck'], 'go': ['gofmt', 'golint', 'govet', 'gopls']}
let g:ale_fix_on_save = 1

let g:ale_python_mypy_options = '-s'
let g:c_clangformat_options = '-style=google'
let g:ale_kotlin_languageserver_executable = 'kotlin-language-server'

autocmd FileType python call s:check_pipenv_mypy()

function s:check_pipenv_mypy()
  let l:pipenv_venv_path = system('pipenv --venv')
  " The above system() call produces a non zero exit code whenever
  " a proper virtual environment has not been found.
  " So, second, we only point YCM to the virtual environment when
  " the call to 'pipenv --venv' was successful.
  " Remember, that 'pipenv --venv' only points to the root directory
  " of the virtual environment, so we have to append a full path to
  " the python executable.
  if v:shell_error == 0
    let g:ale_python_mypy_executable = 'pipenv'
  endif
endfunction

noremap <F6> :ALEFix<CR>
noremap <leader>gd :ALEGoToDefinition<CR>
noremap <leader>gr :ALEDocumentation<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


command! ALEDisableFixers       let g:ale_fix_on_save=0
command! ALEEnableFixers        let g:ale_fix_on_save=1
command! ALEDisableFixersBuffer let b:ale_fix_on_save=0
command! ALEEnableFixersBuffer  let b:ale_fix_on_save=0
command! ALEToggleFixers call s:ale_toggle('global')
command! ALEToggleFixersBuffer call s:ale_toggle('buffer')

fu! s:ale_toggle(...)
    let s:status = {}
    let s:status['global'] = get(g:, 'ale_fix_on_save', 0)
    let s:status['buffer'] = get(b:, 'ale_fix_on_save', s:status['global'])
    let s:scope = get(a:, 1, 'global')
    if (s:status[s:scope] == 1)
        let s:status[s:scope] = 0
    else
        let s:status[s:scope] = 1
    endif
    let g:ale_fix_on_save=s:status['global']
    let b:ale_fix_on_save=s:status['buffer']
endfu
