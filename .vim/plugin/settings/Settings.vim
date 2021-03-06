set nocompatible                      " not compatible with the old-fashion vi mode
set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100
set si
set cinoptions+=g1,h2
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set wrap
set linebreak
set nolist
set hidden
set linespace=0
set cursorline
set nofoldenable
set number
set numberwidth=4
set title
" set showmode
set nobomb                            " no BOM(Byte Order Mark)
set nostartofline
set laststatus=2
set clipboard+=unnamed
set splitright                        " always open vertical split window in the right side
set splitbelow                        " always open horizontal split window below
set scrolloff=5                       " start scrolling when n lines away from margins
set switchbuf=useopen
set showtabline=2                     " always show tab
set wildmode=full                     " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
if !has('nvim')
  set key=			                        " disable encryption
endif
set completeopt=longest,menuone
set synmaxcol=160
" set viminfo=			                    " disable .viminfo file
set shada='100,h,n$HOME/.vim/files/info/viminfo
set ttyfast                           " send more chars while redrawing
set timeoutlen=300
set nobackup                          " no *~ backup files
set noswapfile
set nowritebackup
set copyindent                        " copy the previous indentation on autoindenting
set ignorecase                        " ignore case when searching
set smartcase
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set shortmess=Ia                      " remove splash wording
set cmdheight=2
set hlsearch                          " search highlighting
set incsearch                         " incremental search
set noerrorbells
if !has('nvim')
  set encoding=utf-8
endif
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 tenc=utf-8
scriptencoding utf-8
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**
set t_Co=256
set ru           " word of line
set confirm
set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]
set diffopt+=algorithm:patience,vertical

if has("nvim")
  if has("termguicolors")
    set termguicolors
  endif
endif

set fdm=syntax
set fdn=3

filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins

syntax on                             " syntax highlight
syntax enable

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'

" ======================================
"  custom key and plugin configurations
" ======================================
" remove tailing whitespace
" autocmd BufWritePre * :%s/\s\+$//e

" Add width bound
execute "set colorcolumn=" . join(range(161,335), ',')

" next and prev tab
" noremap <F7> gT
" noremap <F8> gt
" inoremap <F7> <esc>gTa
" inoremap <F8> <esc>gta

" Next and prev buffer
noremap H :bp!<cr>
noremap L :bn!<cr>

" Open file under cursor
map <leader>gf :e <cfile><cr>

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <C-Right> >gv
vmap <C-Left> <gv

noremap j gj
noremap k gk

" remap VIM 0
map 0 ^

" inoremap \<Plug>MoveToHome :normal I<CR>
" inoremap \<Plug>MoveToEnd :normal A<CR>

imap <silent> <C-a> <C-o>I
imap <silent> <C-e> <C-o>A
imap <silent> <Home> <C-o>I
" return current opened file's dirctory
cnoremap %% <C-R>=expand('%:h').'/'<CR>

" quick open vimrc in a new tab
nmap <leader>v :e $MYVIMRC<CR>

highlight Pmenu ctermfg=white  ctermbg=gray
highlight PmenuSel ctermfg=white  ctermbg=blue
highlight MatchParen cterm=NONE ctermbg=cyan ctermfg=black

" select ALL
" map <C-A> ggVG

map <F4> :set hls!<BAR>set hls?<CR>

" colorscheme molokai
colorscheme allomancer

map <silent> <A-Up> <C-w>+
map <silent> <A-Down> <C-w>-
map <silent> <A-Left> <C-w><
map <silent> <A-Right> <C-w>>

map <silent> <C-S-Up> :m .-2<Cr>==
map <silent> <C-S-Down> :m .+1<Cr>==
inoremap <silent> <C-S-Up> <Esc>:m .-2<Cr>==gi
inoremap <silent> <C-S-Down> <Esc>:m .+1<Cr>==gi

" " auto reload after save .vimrc
" au! BufWritePost .vimrc source %

"auto change work dir
autocmd BufEnter * silent! lcd %:p:h

if has('nvim-0.5')
  autocmd TextYankPost * silent!
          \ lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
endif

