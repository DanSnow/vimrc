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
