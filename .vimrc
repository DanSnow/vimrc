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
Plug 'Shougo/neoyank.vim'

"" Motion
Plug 'CamelCaseMotion'

"" Syntax Check
Plug 'w0rp/ale'

"" Completion
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'mattn/emmet-vim'

if v:version >= 704 && (has('python') || has('python3'))
  Plug 'SirVer/ultisnips'
endif

"" Integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
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
Plug 'tpope/vim-commentary'
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
Plug 'sheerun/vim-polyglot'

"""""""""""""""""""""""""""""""
" Language support
"""""""""""""""""""""""""""""""

""" Test
Plug 'tpope/vim-dispatch'

""" Ruby
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
Plug 'tpope/vim-rails', {'for': 'ruby'}
Plug 'ngmy/vim-rubocop', {'for': 'ruby'}
Plug 'ecomba/vim-ruby-refactoring'
Plug 'tpope/vim-rake'

""" C/C++
Plug 'c.vim', {'for': ['c', 'cpp']}
Plug 'cSyntaxAfter', {'for': ['c', 'cpp']}
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp']}
Plug 'justinmk/vim-syntax-extra'

""" Html
Plug 'othree/html5.vim'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-haml'
Plug 'slim-template/vim-slim', {'for': 'slim'}

""" JS
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'mxw/vim-jsx', {'for': ['javascript', 'jsx']}
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'digitaltoad/vim-jade'
Plug 'elzr/vim-json', {'for': ['json', 'cson']}

""" CSS
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'

""" Python
Plug 'davidhalter/jedi-vim'

""" Tools
Plug 'scons.vim'
Plug 'tpope/vim-bundler'
Plug 'tfnico/vim-gradle'
Plug 'keithbsmiley/rspec.vim'

""" Other
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'elixir-lang/vim-elixir'
Plug 'derekwyatt/vim-scala', {'for': 'scala'}
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'Shougo/vinarise.vim', {'on': 'Vinarise'}
Plug 'rhysd/vim-crystal'
call plug#end()
