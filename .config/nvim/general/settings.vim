
syntax enable
filetype plugin on
set autoindent
set hlsearch
set ignorecase
set incsearch
set lazyredraw
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set linebreak
set scrolloff=1
let mapleader = "\<Space>"
set wrap
set laststatus=2
set ruler
set wildmenu
set cursorline
set number
set noerrorbells
set mouse=a
set autoread
set backspace=indent,eol,start
set backupdir=~/.condig/nvim_c
set confirm
set history=1000
set noswapfile nobackup nowritebackup
set path+="*","**"
set clipboard+=unnamedplus
set undofile
set undolevels=1000
set undoreload=10000
set undodir=~/.local/share/nvim
set termguicolors
" set textwidth=150
" set colorcolumn=150
" set formatoptions+=a

autocmd CompleteDone * pclose
au VimLeave * set guicursor=a:ver1-blinkon1
" au BufWrite * :Autoformat
