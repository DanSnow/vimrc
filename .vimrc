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

Plugin 'gmarik/vundle'
Plugin 'Shougo/unite.vim'
Plugin 'osyo-manga/unite-filetype'
" Plugin 'tsukkee/unite-tag'
Plugin 'CamelCaseMotion'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'tmhedberg/matchit'
Plugin 'mattn/emmet-vim'
Plugin 'a.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'tComment'
Plugin 'scrooloose/nerdtree'
Plugin 'SingleCompile'
Plugin 'syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'mbbill/undotree'
" Plugin 'YankRing.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-eunuch'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-endwise'

" highlight & language support
Plugin 'plasticboy/vim-markdown'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'gtk-vim-syntax'
Plugin 'Qt.vim'
Plugin 'c.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'sentientmachine/Pretty-Vim-Python'
" Plugin 'tkztmk/vim-vala'
Plugin 'peterhoeg/vim-qml'
" Plugin 'gerw/vim-latex-suite'
" Plugin 'fatih/vim-go'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'Shougo/vinarise.vim'
Plugin 'SWIG-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'gkz/vim-ls'
Plugin 'chrisbra/csv.vim'
Plugin 'keithbsmiley/rspec.vim'
Plugin 'ciaranm/googletest-syntax'
Plugin 'othree/html5-syntax.vim'
Plugin 'rstacruz/vim-ultisnips-css'
Plugin 'scons.vim'
Plugin 'nginx.vim'
Plugin 'cSyntaxAfter'
