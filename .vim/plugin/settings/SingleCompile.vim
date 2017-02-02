" map <F9> :w<Esc><CR>:SCCompile<CR>:cw<CR>
au BufRead,BufNewFile * map <F9> :SCCompile<CR><CR>:cw<CR>
":cw<CR>
imap <F9> <Esc><F9>

if exists('g:loaded_SingleCompile')
  call SingleCompile#SetCompilerTemplate('cpp', 'g++11', 'GNU C++ Compiler', 'g++', '-Wall -g -std=gnu++11 -o $(FILE_TITLE)$', '$(FILE_RUN)$')
  call SingleCompile#SetCompilerTemplate('cpp', 'g++14', 'GNU C++ Compiler', 'g++', '-Wall -g -std=gnu++14 -o $(FILE_TITLE)$', '$(FILE_RUN)$')
  call SingleCompile#ChooseCompiler('cpp', 'g++14')
  call SingleCompile#SetCompilerTemplate('c', 'gcc99', 'GNU C Compiler', 'gcc', '-Wall -g -std=gnu99 -o $(FILE_TITLE)$', '$(FILE_RUN)$')
  call SingleCompile#ChooseCompiler('c', 'gcc99')
  call SingleCompile#SetCompilerTemplate('ls', 'lsc-bare', 'LiveScript', 'lsc', '-bc $(FILE_NAME)$', 'lsc $(FILE_NAME)$')
endif
