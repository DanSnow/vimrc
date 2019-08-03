no <F9> :SingleCompile<CR><CR>:cw<CR>
imap <F9> <Esc><F9>


fun SingleCompile#ConfigTemplate()
  call SingleCompile#SetCompilerTemplate('cpp', 'g++11', 'GNU C++ Compiler(c++11)', 'g++',
        \'-Wall -Wextra -g -std=gnu++11 -o $(FILE_TITLE)$', './$(FILE_TITLE)$')
  call SingleCompile#SetCompilerTemplate('cpp', 'g++14', 'GNU C++ Compiler(c++14)', 'g++',
        \'-Wall -Wextra -g -std=gnu++14 -o $(FILE_TITLE)$', './$(FILE_TITLE)$')
  call SingleCompile#ChooseCompiler('cpp', 'g++14')
  call SingleCompile#SetCompilerTemplate('c', 'gcc99', 'GNU C Compiler', 'gcc', '-Wall -Wextra -g -std=gnu99 -o $(FILE_TITLE)$', '$(FILE_RUN)$')
  call SingleCompile#ChooseCompiler('c', 'gcc99')
  call SingleCompile#SetCompilerTemplate('ls', 'lsc-bare', 'LiveScript', 'lsc', '-bc $(FILE_NAME)$', 'lsc $(FILE_NAME)$')
endfun

