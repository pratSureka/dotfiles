set nocompatible

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'atahabaki/archman-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'mboughaba/i3config.vim'
Plug 'atahabaki/archman-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf.vim'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ptzz/lf.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'liuchengxu/vista.vim'
Plug 'ajmwagar/vim-deus'
Plug 'liuchengxu/vim-which-key'
Plug 'mhinz/vim-startify'

"vim-lsp
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'

"Completion with Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lighttiger2505/deoplete-vim-lsp'

call plug#end()

"--Misc--"
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
colorscheme deus
autocmd CompleteDone * pclose
" au VimLeave * set guicursor=a:ver1-blinkon1

"--Key-Bindings--"
"
map <silent><leader>w :w<CR>
map <silent><leader>q :q<CR> 
map <silent><leader>wq :wq<CR>

"--Plugin-Config--"

"Vim-plug

nnoremap <silent><leader>pi :PlugInstall<CR>
nnoremap <silent><leader>pc :PlugClean<CR>
nnoremap <silent><leader>pu :PlugUpdate<CR>
nnoremap <silent><leader>ps :PlugStatus<CR>

"Rainbow
let g:rainbow_active = 1

"Indentline
"let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1

"Vim-Airline
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

"Completor
" let g:completor_python_binary = '/usr/lib/python3.8/'
" let g:completor_clang_binary = '/usr/bin/clang'
" inoremap <expr> <M-Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

"Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

"Easy Motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

"Vista
map <silent><Leader>vt :Vista!!<CR>
map <silent><leader>vf :Vista finder<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1

" Vim-Which-Key
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

"COC
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Vim-lsp
let g:lsp_signs_enabled = 1         " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode
let g:lsp_highlight_references_enabled = 1
let g:lsp_diagnostics_enabled = 0

nnoremap <silent><leader>cn :LspNextDiagnostic<CR>
nnoremap <silent><leader>cp :LspPreviousDiagnostic<CR>
nnoremap <silent><leader>cr :LspRename<CR>
nnoremap <silent><leader>ch :LspHover<CR>

"Vim-lsp-settings
let g:lsp_settings = {
\  'clangd': {'cmd': ['clangd']},
\  'vim': {'cmd': ['vim-language-server']},
\  'python': {'cmd': ['pyls']},
\  'efm-langserver': {'disabled': v:false}
\}

"Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr> <M-Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<cr>"
