set encoding=utf-8
set fileencodings=utf-8,cp950

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Package Manager
Plugin 'gmarik/vundle'

" Interface
Plugin 'bling/vim-airline'

" Unite ( utility finder )
Plugin 'Shougo/unite.vim'
Plugin 'osyo-manga/unite-filetype'

" Motion
Plugin 'CamelCaseMotion'

" Syntax Check
Plugin 'syntastic'

" Completion
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-endwise'
Plugin 'mattn/emmet-vim'

" Navigation
Plugin 'a.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-eunuch'

" Utility
Plugin 'SingleCompile'
Plugin 'tmhedberg/matchit'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'tComment'
Plugin 'tpope/vim-repeat'
Plugin 'mbbill/undotree'

" Highlight & Language support

Plugin 'DanSnow/Block.vim'

" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 't9md/vim-ruby-xmpfilter'

" C/C++
Plugin 'c.vim'
Plugin 'cSyntaxAfter'
Plugin 'gtk-vim-syntax'
Plugin 'Qt.vim'
Plugin 'peterhoeg/vim-qml'
Plugin 'ciaranm/googletest-syntax'
Plugin 'SWIG-syntax'
Plugin 'justinmk/vim-syntax-extra'

" Html
Plugin 'othree/html5-syntax.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'

" JS
Plugin 'maksimr/vim-jsbeautify'
Plugin 'kchmck/vim-coffee-script'
Plugin 'gkz/vim-ls'

" CSS
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'rstacruz/vim-ultisnips-css'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'wavded/vim-stylus'

" Python
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'sentientmachine/Pretty-Vim-Python'

" Tools
Plugin 'scons.vim'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'tfnico/vim-gradle'
Plugin 'keithbsmiley/rspec.vim'

" Other
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'Shougo/vinarise.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'nginx.vim'
