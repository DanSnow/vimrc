let g:LanguageClient_serverStderr = '/tmp/language-server.stderr'

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'nightly', 'rls'],
    \ 'cpp': ['clangd'],
    \ }
nnoremap <leader>ll :call LanguageClient#debugInfo()<CR>
