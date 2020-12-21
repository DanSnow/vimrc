call ale#Set('javascript_import_sort_executable', 'import-sort')
call ale#Set('javascript_import_sort_use_global', get(g:, 'ale_use_global_executables', 0))
call ale#Set('javascript_import_sort_options', '')

function! ale#fixers#import_sort#GetExecutable(buffer) abort
  return ale#node#FindExecutable(a:buffer, 'javascript_import_sort', [
        \   'node_modules/.bin/import-sort',
        \   'node_modules/import-sort-cli/lib/index.js',
        \])
endfunction

function! ale#fixers#import_sort#Fix(buffer) abort
  let l:executable = ale#fixers#import_sort#GetExecutable(a:buffer)

  return {
        \   'command': ale#node#Executable(a:buffer, l:executable)
        \       . ' --write %t',
        \   'read_temporary_file': 1,
        \}
endfunction
