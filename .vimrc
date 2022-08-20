if &compatible
  set nocompatible               " Be iMproved
endif

set encoding=utf-8
set fileencodings=utf-8,cp950
set guifont=Iosevka\ Nerd\ Font:16


" These setting will affect others
let mapleader = "\<space>"
let g:mapleader="\<space>"

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

let s:dein_toml = '~/.vim/dein.toml'

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein', [expand('<sfile>'), s:dein_toml])

  call dein#load_toml(s:dein_toml)

  """""""""""""""""""""""""""""""""
  " Environment
  """""""""""""""""""""""""""""""""

  "" Interface
  " call dein#add('vim-airline/vim-airline')
  " call dein#add('vim-airline/vim-airline-themes')
  " call dein#add('RRethy/vim-illuminate')

  "" Navigation
  " call dein#add('vim-scripts/a.vim')
  " call dein#add('majutsushi/tagbar', {'on_cmd': ['TagbarToggle']})

  "" Completion
  " call dein#add('Raimondi/delimitMate')
  " call dein#add('jiangmiao/auto-pairs')

  "" Diff
  " call dein#add('chrisbra/vim-diff-enhanced')

  "" Utility
  " call dein#add('vim-scripts/SingleCompile', {
  "       \ 'lazy': 1,
  "       \ 'on_cmd': ['SingleCompile', 'SingleCompileRun'],
  "       \ 'hook_post_source': function('SingleCompile#ConfigTemplate')})


  """""""""""""""""""""""""""""""
  " Language support
  """""""""""""""""""""""""""""""

  """ C/C++
  " call dein#add('vim-scripts/c.vim', {'on_ft': ['c', 'cpp']})
  " call dein#add('vim-scripts/cSyntaxAfter', {'on_ft': ['c', 'cpp']})
  " call dein#add('octol/vim-cpp-enhanced-highlight', {'on_ft': ['cpp']})
  " call dein#add('justinmk/vim-syntax-extra')

  """ Html
  " call dein#add('gregsexton/MatchTag', {'on_ft' : 'html'})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

let g:deoplete#enable_at_startup = 1
