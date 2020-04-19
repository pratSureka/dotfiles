set nocompatible

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'atahabaki/archman-vim'
Plug 'maralla/completor.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-surround'
Plug 'chrisbra/Colorizer'
Plug 'lilydjwg/colorizer'
Plug 'mboughaba/i3config.vim'
Plug 'atahabaki/archman-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf.vim'
Plug 'ParamagicDev/vim-medic_chalk'

call plug#end()

"--Misc--"
syntax enable
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
let mapleader = " "
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
colorscheme medic_chalk
" au VimLeave * set guicursor=a:ver1-blinkon1

"--Plugin-Config--"

"Rainbow
let g:rainbow_active = 1

"Indentline
"let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1

"Lightline
set noshowmode
" let g:lightline = { 'colorscheme': 'dracula' }

"Completor
let g:completor_python_binary = '/usr/lib/python3.8/'
let g:completor_clang_binary = '/usr/bin/clang'
inoremap <expr> <M-Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

"Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"Easy Motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
