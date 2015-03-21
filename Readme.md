My vimrc
=====

# Description #
This is my vimrc. It contain some awesome plugin, and user friendly setting.

# Screenshot #

![Screenshot](/screenshot/screenshot1.png?raw=1)

# Installation #

```shell
$ git clone https://github.com/DanSnow/Vimrc.git
$ cd Vimrc
$ ./install.sh
```

This will take amount time to install plugin.
It will have some of error at first. Just ignore it.
After finish you can start use your vim.

# Key Mapping #

These are my custom or common using key mapping. For plugin key mapping, you should reference their document for full help.

\<leader\>: ,

Normal mode:
- \<F1\>: Toggle Gundo
- \<F2\>: Toggle VimFiler
- \<F3\>: Toggle Tagbar
- \<F4\>: Toggle highlight search
- \<F5\>: Toggle QuickFix
- \<F6\>: Format code(Require astyle, nodejs. Only for C, C++, Java, Html, CSS, JavaScript)
- \<F7\>: Previous tab
- \<F8\>: Next tab
- \<F9\>: Compile or run (By SingleCompile)
- \<Tab>: Increase indent to current line
- \<S-Tab\>: Decrease indent to current line
- \<leader\>a: Jump to header file(By a.vim)
- \<leader\>f: Unite file
- \<leader\>e: Unite buffer
- \<leader\>t: Unite filetype
- \<leader\>y: Unite yank history
- \<leader\>p: Previous buffer
- \<leader\>n: Next bufer
- \<leader\>z: Toggle persent Mode
- \<C-p\>: Unite
- \<M-Right\>: Increse horizontal size (When window split)
- \<M-Left\>: Decrese horizontal size (When window split)
- \<M-Down\>: Increse vertical size (When window split)
- \<M-Up\>: Decrese vertical size (When window split)
- gcc: Toggle current comment(By tComment)

Visual mode:
- \<C-Right\>: Increase select line indent
- \<C-Left\>: Decrease select line indent

# Plugin #
I admit the amount of plugin cause performance problem. But it useful, maybe.
## Plugin Manager ##
- [Vim-Plug](https://github.com/junegunn/vim-plug)

**Note: ** This manager seem faster but ruby support is needed.

## Interface ##
- [vim-airline](https://github.com/bling/vim-airline)

## File Explorer ##
- [Unite](https://github.com/Shougo/unite.vim) (File finder)
  - [unite-filetype](https://github.com/osyo-manga/unite-filetype)
- [nerdtree](https://github.com/scrooloose/nerdtree) (Explorer)

## Code Display ##
- [indentLine](https://github.com/Yggdroot/indentLine)
- [vinarise.vim](https://github.com/Shougo/vinarise.vim)
- [tagbar](https://github.com/majutsushi/tagbar) (Dislapy Tag)

## Completion ##
- [delimitMate](https://github.com/Raimondi/delimitMate)
- [ultisnips](https://github.com/SirVer/ultisnips)
- [vim-endwise](https://github.com/tpope/vim-endwise)
- [emmet](https://github.com/mattn/emmet-vim)

## Utils ##
- [matchit](https://github.com/tmhedberg/matchit)
- [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
- [vim-surround](https://github.com/tpope/vim-surround)
- [tComment](https://github.com/vim-scripts/tComment) (Toggle comment)
- [SingleCompile](https://github.com/vim-scripts/SingleCompile)
- [syntastic](https://github.com/vim-scripts/syntastic) (Syntax check)
- [vim-repeat](https://github.com/tpope/vim-repeat)
- [vim-fugitive](https://github.com/tpope/vim-fugitive) (Git binding)
- [undotree](https://github.com/mbbill/undotree)
- [vim-eunuch](https://github.com/tpope/vim-eunuch) (Add utils function for linux)
- [vimshell.vim](https://github.com/Shougo/vimshell.vim)
  - [vimproc.vim](https://github.com/Shougo/vimproc.vim)
- [CamelCaseMotion](https://github.com/vim-scripts/CamelCaseMotion)

## Language Support ##
- [vim-markdown](https://github.com/plasticboy/vim-markdown)
- [vim-python-pep8-indent](https://github.com/hynek/vim-python-pep8-indent)
- [gtk-vim-syntax](https://github.com/vim-scripts/gtk-vim-syntax)
- [Qt.vim](https://github.com/vim-scripts/Qt.vim)
- [c.vim](https://github.com/vim-scripts/c.vim)
- [vim-ruby](https://github.com/vim-ruby/vim-ruby)
- [vim-ruby-xmpfilter](https://github.com/t9md/vim-ruby-xmpfilter)
- [vim-css-color](https://github.com/ap/vim-css-color)
- [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)
- [scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim)
- [vim-haml](https://github.com/tpope/vim-haml)
- [vim-slim](https://github.com/slim-template/vim-slim)
- [vim-jsbeautify](https://github.com/maksimr/vim-jsbeautify)
- [Pretty-Vim-Python](https://github.com/sentientmachine/Pretty-Vim-Python)
- [vim-qml](https://github.com/peterhoeg/vim-qml)
- [vim-rake](https://github.com/tpope/vim-rake)
- [vim-bundler](https://github.com/tpope/vim-bundler)
- [SWIG-syntax](https://github.com/vim-scripts/SWIG-syntax)
- [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
- [vim-ls](https://github.com/gkz/vim-ls)
- [csv.vim](https://github.com/chrisbra/csv.vim)
- [rspec.vim](https://github.com/keithbsmiley/rspec.vim)
- [googletest-syntax](https://github.com/ciaranm/googletest-syntax)
- [html5-syntax.vim](https://github.com/othree/html5-syntax.vim)
- [vim-ultisnips-css](https://github.com/rstacruz/vim-ultisnips-css)
- [scons.vim](https://github.com/vim-scripts/scons.vim)
- [nginx.vim](https://github.com/vim-scripts/nginx.vim)
- [cSyntaxAfter](https://github.com/vim-scripts/cSyntaxAfter)
