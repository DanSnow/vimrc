if &compatible
  set nocompatible               " Be iMproved
endif

set encoding=utf-8
set fileencodings=utf-8,cp950

" These setting will affect others
let mapleader=','
let g:mapleader=','

" Required:
set runtimepath+=~/.vim/plugged/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/plugged')
  call dein#begin('~/.vim/plugged')

  """""""""""""""""""""""""""""""""
  " Environment
  """""""""""""""""""""""""""""""""

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/plugged/repos/github.com/Shougo/dein.vim')
  call dein#add('wsdjeg/dein-ui.vim')

  "" Interface
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  "" Navigation
  call dein#add('vim-scripts/a.vim')
  call dein#add('Shougo/vimfiler.vim')
  call dein#add('majutsushi/tagbar', {'on_cmd': ['TagbarToggle']})
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neoyank.vim')

  "" Motion
  call dein#add('vim-scripts/CamelCaseMotion')

  "" Syntax Check
  call dein#add('w0rp/ale')

  "" Completion
  call dein#add('Raimondi/delimitMate')
  call dein#add('tpope/vim-endwise')
  call dein#add('mattn/emmet-vim')

  if v:version >= 704 && (has('python') || has('python3'))
    call dein#add('SirVer/ultisnips')
  endif

  "" Integration
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('Shougo/vimproc.vim', { 'build': 'make' })
  call dein#add('tpope/vim-eunuch')
  call dein#add('editorconfig/editorconfig-vim')

  if v:version >= 703
    call dein#add('Shougo/vimshell.vim')
  endif

  "" Diff
  call dein#add('chrisbra/vim-diff-enhanced')

  "" Input method
  call dein#add('vim-scripts/fcitx.vim')

  "" Utility
  call dein#add('kshenoy/vim-signature')
  call dein#add('vim-scripts/SingleCompile')
  call dein#add('Yggdroot/indentLine')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-abolish')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('tpope/vim-repeat')
  call dein#add('tommcdo/vim-exchange')
  call dein#add('godlygeek/tabular', {'on_cmd': 'Tabularize'})
  call dein#add('sjl/gundo.vim', {'on_cmd': ['GundoToggle', 'GundoShow']})
  call dein#add('powerman/vim-plugin-viewdoc')
  call dein#add('dhruvasagar/vim-dotoo')

  "" Color Scheme
  call dein#add('NLKNguyen/papercolor-theme')
  call dein#add('tomasr/molokai')

  "" Highlight & Language support

  call dein#add('DanSnow/Block.vim')
  call dein#add('Chiel92/vim-autoformat', {'on_cmd': 'Autoformat'})
  call dein#add('sheerun/vim-polyglot')

  """""""""""""""""""""""""""""""
  " Language support
  """""""""""""""""""""""""""""""

  """ Test
  call dein#add('tpope/vim-dispatch')

  """ Ruby
  call dein#add('vim-ruby/vim-ruby', {'on_ft': 'ruby'})
  call dein#add('tpope/vim-rails', {'on_ft': 'ruby'})
  call dein#add('ngmy/vim-rubocop', {'on_ft': 'ruby'})
  call dein#add('ecomba/vim-ruby-refactoring', {'on_ft': 'ruby'})
  call dein#add('tpope/vim-rake', {'on_ft': 'ruby'})

  """ C/C++
  call dein#add('vim-scripts/c.vim', {'on_ft': ['c', 'cpp']})
  call dein#add('vim-scripts/cSyntaxAfter', {'on_ft': ['c', 'cpp']})
  call dein#add('octol/vim-cpp-enhanced-highlight', {'on_ft': ['cpp']})
  call dein#add('justinmk/vim-syntax-extra')

  """ Html
  call dein#add('othree/html5.vim', {'on_ft' : 'html'})
  call dein#add('gregsexton/MatchTag', {'on_ft' : 'html'})
  call dein#add('tpope/vim-haml', {'on_ft': 'haml'})
  call dein#add('slim-template/vim-slim', {'on_ft': 'slim'})

  """ JS
  call dein#add('othree/yajs.vim', {'on_ft': ['javascript', 'jsx']})
  call dein#add('othree/es.next.syntax.vim', {'on_ft': ['javascript', 'jsx']})
  call dein#add('mxw/vim-jsx', {'on_ft': ['javascript', 'jsx']})
  call dein#add('othree/javascript-libraries-syntax.vim',{'on_ft': ['javascript', 'jsx']} )
  call dein#add('digitaltoad/vim-pug', {'on_ft': ['pug', 'jade']})
  call dein#add('elzr/vim-json', {'on_ft': ['json', 'cson']})

  """ CSS
  call dein#add('ap/vim-css-color', {'on_ft': 'css'})
  call dein#add('hail2u/vim-css3-syntax', {'on_ft': 'css'})
  call dein#add('cakebaker/scss-syntax.vim', {'on_ft': 'scss'})

  """ Python
  call dein#add('davidhalter/jedi-vim', {'on_ft': 'python'})

  """ Tools
  call dein#add('vim-scripts/scons.vim', {'on_ft': 'scons'})
  call dein#add('tpope/vim-bundler', {'on_ft': 'ruby'})
  call dein#add('tfnico/vim-gradle')
  call dein#add('keithbsmiley/rspec.vim', {'on_ft': 'ruby'})

  """ Other
  call dein#add('jakwings/vim-pony', {'on_ft': 'pony'})
  call dein#add('rust-lang/rust.vim', {'on_ft': 'rust'})
  call dein#add('elixir-lang/vim-elixir', {'on_ft': 'elixir'})
  call dein#add('derekwyatt/vim-scala', {'on_ft': 'scala'})
  call dein#add('fatih/vim-go', {'on_ft': 'go'})
  call dein#add('Shougo/vinarise.vim', {'on_cmd': 'Vinarise'})
  call dein#add('rhysd/vim-crystal', {'on_ft': 'crystal'})
  call dein#add('wakatime/vim-wakatime')


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

