set encoding=utf-8
set fileencodings=utf-8,cp950

" These setting will affect others
let mapleader=','
let g:mapleader=','

call plug#begin("~/.vim/plugged")
"""""""""""""""""""""""""""""""""
" Environment
"""""""""""""""""""""""""""""""""

"" Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" Navigation
Plug 'a.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'majutsushi/tagbar'
Plug 'Shougo/unite.vim'
Plug 'osyo-manga/unite-filetype'

"" Motion
Plug 'CamelCaseMotion'

"" Syntax Check
Plug 'syntastic'

"" Completion
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'mattn/emmet-vim'

if v:version >= 704 && (has('python') || has('python3'))
  Plug 'SirVer/ultisnips'
endif

"" Integration
Plug 'tpope/vim-fugitive'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'tpope/vim-eunuch'
Plug 'editorconfig/editorconfig-vim'

if v:version >= 703
  Plug 'Shougo/vimshell.vim'
endif

"" Diff
Plug 'chrisbra/vim-diff-enhanced'

"" Input method
Plug 'fcitx.vim'

"" Utility
Plug 'kshenoy/vim-signature'
Plug 'SingleCompile'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tComment'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tommcdo/vim-exchange'
Plug 'godlygeek/tabular'
Plug 'sjl/gundo.vim'
Plug 'powerman/vim-plugin-viewdoc'
Plug 'dhruvasagar/vim-dotoo'

"" Color Scheme
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasr/molokai'

"" Highlight & Language support

Plug 'DanSnow/Block.vim'
Plug 'Chiel92/vim-autoformat'

"""""""""""""""""""""""""""""""
" Language support
"""""""""""""""""""""""""""""""

""" Test
Plug 'tpope/vim-dispatch'

""" Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails', {'for': 'ruby'}
Plug 'ngmy/vim-rubocop', {'for': 'ruby'}

""" C/C++
Plug 'c.vim', {'for': ['c', 'cpp']}
Plug 'cSyntaxAfter', {'for': ['c', 'cpp']}
Plug 'gtk-vim-syntax', {'for': ['c', 'cpp']}
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp']}
Plug 'DanSnow/cmocka.vim', {'for': 'c'}
Plug 'ciaranm/googletest-syntax', {'for': 'cpp'}
Plug 'justinmk/vim-syntax-extra'

""" Html
Plug 'othree/html5.vim'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim', {'for': 'slim'}

""" JS
Plug 'isRuslan/vim-es6'
Plug 'mxw/vim-jsx', {'for': ['javascript', 'jsx']}
Plug 'kchmck/vim-coffee-script'
Plug 'mtscout6/vim-cjsx', {'for': ['coffee', 'cjsx']}
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'digitaltoad/vim-jade'
Plug 'elzr/vim-json', {'for': ['json', 'cson']}

""" CSS
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'wavded/vim-stylus'

""" Python
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'sentientmachine/Pretty-Vim-Python', {'for': 'python'}

""" Tools
Plug 'scons.vim'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'tfnico/vim-gradle'
Plug 'keithbsmiley/rspec.vim'

""" Other
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'elixir-lang/vim-elixir'
Plug 'derekwyatt/vim-scala', {'for': 'scala'}
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'Shougo/vinarise.vim', {'on': 'Vinarise'}
Plug 'nginx.vim'
Plug 'tkztmk/vim-vala', {'for': 'vala'}
Plug 'mustache/vim-mustache-handlebars'
Plug 'posva/vim-vue'
Plug 'rhysd/vim-crystal'
call plug#end()
