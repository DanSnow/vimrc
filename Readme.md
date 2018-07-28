My vimrc
=====

# Description #
This is my vimrc. It contain some awesome plugin, and user friendly setting.

# Screenshot #

![Screenshot](/screenshot/screenshot1.png?raw=1)

# Installation #
```shell
$ git clone https://github.com/DanSnow/vimrc.git
$ cd vimrc
$ ./install.sh
```

It will install all plugin at first start  

# Key Mapping #

These are my custom or common using key mapping. For plugin key mapping, you should reference their document for full help.

\<leader\>: ,

Normal mode:
- \<F1\>: Toggle Gundo
- \<F2\>: Toggle VimFiler
- \<F3\>: Toggle Tagbar
- \<F4\>: Toggle highlight search
- \<F5\>: Toggle QuickFix
- \<F6\>: Format code(Require astyle, nodejs. Support by AutoFormat)
- \<F7\>: Previous tab
- \<F8\>: Next tab
- \<F9\>: Compile or run (By SingleCompile)
- \<Tab>: Increase indent to current line
- \<S-Tab\>: Decrease indent to current line
- \<leader\>a: Jump to header file(By a.vim)
- \<leader\>f: Denite file
- \<leader\>e: Denite buffer
- \<leader\>t: Denite filetype
- \<leader\>p: Previous buffer
- \<leader\>n: Next bufer
- \<leader\>z: Toggle persent Mode
- \<M-Right\>: Increse horizontal size (When window split)
- \<M-Left\>: Decrese horizontal size (When window split)
- \<M-Down\>: Increse vertical size (When window split)
- \<M-Up\>: Decrese vertical size (When window split)
- gcc: Toggle current comment(By vim-commentary)

Visual mode:
- \<C-Right\>: Increase select line indent
- \<C-Left\>: Decrease select line indent

# Plugin #
I admit the amount of plugin cause performance problem. But it useful, maybe.

[comment]: # Inject start
- [dein.vim](https://github.com/Shougo/dein.vim)
- [dein-ui.vim](https://github.com/wsdjeg/dein-ui.vim)

## Interface ##
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)

## Navigation ##
- [a.vim](https://github.com/vim-scripts/a.vim)
- [vimfiler.vim](https://github.com/Shougo/vimfiler.vim)
- [tagbar](https://github.com/majutsushi/tagbar)
- [denite.nvim](https://github.com/Shougo/denite.nvim)
- [unite.vim](https://github.com/Shougo/unite.vim)
- [unite-filetype](https://github.com/osyo-manga/unite-filetype)
- [neoyank.vim](https://github.com/Shougo/neoyank.vim)

## Motion ##
- [CamelCaseMotion](https://github.com/vim-scripts/CamelCaseMotion)

## Syntax Check ##
- [ale](https://github.com/w0rp/ale)

## Completion ##
- [delimitMate](https://github.com/Raimondi/delimitMate)
- [vim-endwise](https://github.com/tpope/vim-endwise)
- [emmet-vim](https://github.com/mattn/emmet-vim)
- [ultisnips](https://github.com/SirVer/ultisnips)

## Integration ##
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vimproc.vim](https://github.com/Shougo/vimproc.vim)
- [vim-eunuch](https://github.com/tpope/vim-eunuch)
- [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)
- [vimshell.vim](https://github.com/Shougo/vimshell.vim)

## Diff ##
- [vim-diff-enhanced](https://github.com/chrisbra/vim-diff-enhanced)

## Input method ##
- [fcitx.vim](https://github.com/vim-scripts/fcitx.vim)

## Utility ##
- [vim-signature](https://github.com/kshenoy/vim-signature)
- [SingleCompile](https://github.com/vim-scripts/SingleCompile)
- [indentLine](https://github.com/Yggdroot/indentLine)
- [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
- [vim-surround](https://github.com/tpope/vim-surround)
- [vim-abolish](https://github.com/tpope/vim-abolish)
- [vim-commentary](https://github.com/tpope/vim-commentary)
- [vim-unimpaired](https://github.com/tpope/vim-unimpaired)
- [vim-repeat](https://github.com/tpope/vim-repeat)
- [vim-exchange](https://github.com/tommcdo/vim-exchange)
- [tabular](https://github.com/godlygeek/tabular)
- [gundo.vim](https://github.com/sjl/gundo.vim)
- [vim-plugin-viewdoc](https://github.com/powerman/vim-plugin-viewdoc)
- [vim-dotoo](https://github.com/dhruvasagar/vim-dotoo)

## Color Scheme ##
- [papercolor-theme](https://github.com/NLKNguyen/papercolor-theme)
- [molokai](https://github.com/tomasr/molokai)

## Highlight & Language support ##
- [Block.vim](https://github.com/DanSnow/Block.vim)
- [vim-autoformat](https://github.com/Chiel92/vim-autoformat)
- [vim-polyglot](https://github.com/sheerun/vim-polyglot)

### Test ###
- [vim-dispatch](https://github.com/tpope/vim-dispatch)

### Ruby ###
- [vim-ruby](https://github.com/vim-ruby/vim-ruby)
- [vim-rails](https://github.com/tpope/vim-rails)
- [vim-rubocop](https://github.com/ngmy/vim-rubocop)
- [vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring)
- [vim-rake](https://github.com/tpope/vim-rake)

### C/C++ ###
- [c.vim](https://github.com/vim-scripts/c.vim)
- [cSyntaxAfter](https://github.com/vim-scripts/cSyntaxAfter)
- [vim-cpp-enhanced-highlight](https://github.com/octol/vim-cpp-enhanced-highlight)
- [vim-syntax-extra](https://github.com/justinmk/vim-syntax-extra)

### Html ###
- [html5.vim](https://github.com/othree/html5.vim)
- [MatchTag](https://github.com/gregsexton/MatchTag)
- [vim-haml](https://github.com/tpope/vim-haml)
- [vim-slim](https://github.com/slim-template/vim-slim)

### JS ###
- [yajs.vim](https://github.com/othree/yajs.vim)
- [es.next.syntax.vim](https://github.com/othree/es.next.syntax.vim)
- [vim-jsx](https://github.com/mxw/vim-jsx)
- [javascript-libraries-syntax.vim](https://github.com/othree/javascript-libraries-syntax.vim)
- [vim-pug](https://github.com/digitaltoad/vim-pug)
- [vim-json](https://github.com/elzr/vim-json)

### CSS ###
- [vim-css-color](https://github.com/ap/vim-css-color)
- [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
- [scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim)

### Python ###
- [jedi-vim](https://github.com/davidhalter/jedi-vim)

### Tools ###
- [scons.vim](https://github.com/vim-scripts/scons.vim)
- [vim-bundler](https://github.com/tpope/vim-bundler)
- [vim-gradle](https://github.com/tfnico/vim-gradle)
- [rspec.vim](https://github.com/keithbsmiley/rspec.vim)

### Other ###
- [vim-pony](https://github.com/jakwings/vim-pony)
- [rust.vim](https://github.com/rust-lang/rust.vim)
- [vim-elixir](https://github.com/elixir-lang/vim-elixir)
- [vim-scala](https://github.com/derekwyatt/vim-scala)
- [vim-go](https://github.com/fatih/vim-go)
- [vinarise.vim](https://github.com/Shougo/vinarise.vim)
- [vim-crystal](https://github.com/rhysd/vim-crystal)
- [vim-wakatime](https://github.com/wakatime/vim-wakatime)
