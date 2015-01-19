set encoding=utf-8
set fileencodings=utf-8,cp950

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vim-plug/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vim-Plug.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/junegunn/vim-plug ~/.vim/bundle/vim-plug
  let iCanHazVundle=0
endif

so ~/.vim/bundle/vim-plug/plug.vim
call plug#begin("~/.vim/bundle")

" Package Manager
Plug 'junegunn/vim-plug'

" Interface
Plug 'bling/vim-airline'

" Unite ( utility finder )
Plug 'Shougo/unite.vim'
Plug 'osyo-manga/unite-filetype'

" Motion
Plug 'CamelCaseMotion'

" Syntax Check
Plug 'syntastic'

" Completion
Plug 'Valloric/YouCompleteMe'
Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-endwise'
Plug 'mattn/emmet-vim'

" Navigation
Plug 'a.vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-fugitive'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/vimshell.vim'
Plug 'tpope/vim-eunuch'

" Utility
Plug 'SingleCompile'
Plug 'tmhedberg/matchit'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tComment'
Plug 'tpope/vim-repeat'
Plug 'mbbill/undotree'

" Highlight & Language support

Plug 'DanSnow/Block.vim'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 't9md/vim-ruby-xmpfilter'

" C/C++
Plug 'c.vim'
Plug 'cSyntaxAfter'
Plug 'gtk-vim-syntax'
Plug 'Qt.vim'
Plug 'peterhoeg/vim-qml'
Plug 'ciaranm/googletest-syntax'
Plug 'SWIG-syntax'
Plug 'justinmk/vim-syntax-extra'

" Html
Plug 'othree/html5.vim'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim'

" JS
Plug 'maksimr/vim-jsbeautify'
Plug 'kchmck/vim-coffee-script'
Plug 'gkz/vim-ls'
Plug 'digitaltoad/vim-jade'

" CSS
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'rstacruz/vim-ultisnips-css'
Plug 'cakebaker/scss-syntax.vim'
Plug 'wavded/vim-stylus'

" Python
Plug 'hynek/vim-python-pep8-indent'
Plug 'sentientmachine/Pretty-Vim-Python'

" Tools
Plug 'scons.vim'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'tfnico/vim-gradle'
Plug 'keithbsmiley/rspec.vim'

" Other
Plug 'derekwyatt/vim-scala'
Plug 'xsbeats/vim-blade'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go'
Plug 'Shougo/vinarise.vim'
Plug 'chrisbra/csv.vim'
Plug 'nginx.vim'
call plug#end()
